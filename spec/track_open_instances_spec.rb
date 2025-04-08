# frozen_string_literal: true

RSpec.describe TrackOpenInstances do
  it 'has a version number' do
    expect(TrackOpenInstances::VERSION).not_to be nil
  end

  context 'when included in TestClass' do
    let(:test_class) do
      Class.new do
        include TrackOpenInstances
      end
    end

    it 'should start with no open instances' do
      expect(test_class.open_instances).to be_empty
    end

    describe '.add_open_instance' do
      before { test_class.add_open_instance(instance) }

      let(:instance) { test_class.new }

      it 'should add the instance to the list of open instances' do
        expect(test_class.open_instance_count).to eq(1)

        expect(test_class.open_instances).to(
          include(
            instance => be_a(Object).and(having_attributes(instance: instance))
          )
        )
      end
    end

    describe '.remove_open_instance' do
      context 'when removing the only instance' do
        before do
          test_class.add_open_instance(instance)
        end

        let(:instance) { test_class.new }

        it 'should remove the instance from the list of open instances' do
          test_class.remove_open_instance(instance)
          expect(test_class.open_instance_count).to eq(0)
        end
      end

      context 'when removing an instance that is not the only one' do
        before do
          test_class.add_open_instance(instance1)
          test_class.add_open_instance(instance2)
        end

        let(:instance1) { test_class.new }
        let(:instance2) { test_class.new }

        it 'should remove the specified instance from the list of open instances' do
          test_class.remove_open_instance(instance1)
          expect(test_class.open_instance_count).to eq(1)
          expect(test_class.open_instances).not_to include(instance1)
          expect(test_class.open_instances).to include(instance2)
        end
      end

      context 'when removing an instance that is not tracked' do
        let(:instance) { test_class.new }

        it 'should not raise an error' do
          expect { test_class.remove_open_instance(instance) }.not_to raise_error
        end
      end
    end

    describe '.open_instances' do
      subject { test_class.open_instances }

      context 'when there are no open instances' do
        it 'should return an empty hash' do
          expect(subject).to be_empty
        end
      end

      context 'when there is one open instance' do
        before { test_class.add_open_instance(instance) }

        let(:instance) { test_class.new }

        it 'should return a frozen copy of the open instances' do
          expect(subject).to be_frozen
          expect(subject).to include(
            instance => be_a(Object).and(having_attributes(instance: instance))
          )
        end
      end
    end

    describe '.open_instance_count' do
      subject { test_class.open_instance_count }

      context 'when there are no open instances' do
        it 'should return 0' do
          expect(subject).to eq(0)
        end
      end

      context 'when there are open instances' do
        before { test_class.add_open_instance(instance) }
        let(:instance) { test_class.new }
        it 'should return the correct count' do
          expect(subject).to eq(1)
        end
      end
    end

    describe '.open_instances_report' do
      subject { test_class.open_instances_report }

      context 'when there are no open instances' do
        it 'should return nil' do
          expect(subject).to be_nil
        end
      end

      context 'when there are open instances' do
        before { test_class.add_open_instance(instance) }

        let(:instance) { test_class.new }

        it 'should return a report string' do
          expect(subject).to be_a(String)
          expect(subject).to start_with("There is 1 open Class instance:\n")
          expect(subject).to include("- object_id=#{instance.object_id}\n")
        end
      end

      context 'when there are multiple open instances' do
        before do
          test_class.add_open_instance(instance1)
          test_class.add_open_instance(instance2)
          test_class.add_open_instance(instance3)
        end

        let(:instance1) { test_class.new }
        let(:instance2) { test_class.new }
        let(:instance3) { test_class.new }

        it 'should return a report string' do
          # expect(subject).to be_a(String)
          expect(subject).to start_with("There are 3 open Class instances:\n")
          expect(subject).to include("- object_id=#{instance1.object_id}\n")
          expect(subject).to include("- object_id=#{instance2.object_id}\n")
          expect(subject).to include("- object_id=#{instance3.object_id}\n")
        end
      end
    end

    describe '.assert_no_open_instances' do
      subject { test_class.assert_no_open_instances }

      context 'when there are no open instances' do
        it 'should not raise an error' do
          expect { subject }.not_to raise_error
        end
      end
      context 'when there are open instances' do
        before { test_class.add_open_instance(instance) }

        let(:instance) { test_class.new }

        it 'should raise an error' do
          expect { subject }.to raise_error(RuntimeError, /There is 1 open Class instance/)
        end
      end
    end
  end
end
