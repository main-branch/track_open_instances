# Change Log

## [0.1.10](https://github.com/main-branch/track_open_instances/compare/v0.1.9...v0.1.10) (2025-04-15)


### Bug Fixes

* Amend release task so it does not create a new tag ([4ba194c](https://github.com/main-branch/track_open_instances/commit/4ba194ce6c744db3ab57bed022e8d311166a4e64))

## [0.1.9](https://github.com/main-branch/track_open_instances/compare/v0.1.8...v0.1.9) (2025-04-15)


### Bug Fixes

* Amend release task so it does not create a new tag ([7bedd17](https://github.com/main-branch/track_open_instances/commit/7bedd176c140f6b3979f39388f0ca803c32f9282))

## [0.1.8](https://github.com/main-branch/track_open_instances/compare/v0.1.7...v0.1.8) (2025-04-15)


### Bug Fixes

* Remove component name from release version tag ([5991728](https://github.com/main-branch/track_open_instances/commit/59917284241eaa173fd4f83a38710cb50a23c750))

## [0.1.7](https://github.com/main-branch/track_open_instances/compare/track_open_instances-v0.1.6...track_open_instances/v0.1.7) (2025-04-15)


### Bug Fixes

* Add package-name to release-please configuration ([83d0198](https://github.com/main-branch/track_open_instances/commit/83d0198bfab34e26b641ca7e27af08b68e07c396))
* Automatically push the new gem release to rubygems.org ([d133153](https://github.com/main-branch/track_open_instances/commit/d13315396f590fefeb07cc4b71a13c9e9709842b))
* Checkout project before the release-please step in release workflow ([80d9a35](https://github.com/main-branch/track_open_instances/commit/80d9a35ed155f3ba7e14a585e54d9ec34d2722e2))
* Fix several documentation and report errors ([fd17199](https://github.com/main-branch/track_open_instances/commit/fd171997871796df746c8e1312a4fdb07cb363d5))
* Make release-please use a different tag than release-gem ([a7d42dc](https://github.com/main-branch/track_open_instances/commit/a7d42dcb132bd40ceb3830a6a02a09694022844a))
* Make small change to test release ([8304c90](https://github.com/main-branch/track_open_instances/commit/8304c905883c760e6419210be300b637f01e054d))
* Release workflow should checkout project ([869a7e0](https://github.com/main-branch/track_open_instances/commit/869a7e011438b57bcb810680ecdf0eb5beec193b))
* Remove the qlty.sh integration ([4c4492b](https://github.com/main-branch/track_open_instances/commit/4c4492bb19d1f39fa96ec30ad0af12d103067e92))
* Specify the version file ([be826cf](https://github.com/main-branch/track_open_instances/commit/be826cfe9a8aa526cdaa3f1ecb5912641f3db38c))
* Start autoreleases at 0.1.0 ([5a2fad7](https://github.com/main-branch/track_open_instances/commit/5a2fad7a9cb029a5dbfb9785f979fc07bf7f127b))

## [0.1.6](https://github.com/main-branch/track_open_instances/compare/v0.1.5...v0.1.6) (2025-04-15)


### Bug Fixes

* Make release-please use a different tag than release-gem ([a7d42dc](https://github.com/main-branch/track_open_instances/commit/a7d42dcb132bd40ceb3830a6a02a09694022844a))

## [0.1.5](https://github.com/main-branch/track_open_instances/compare/v0.1.4...v0.1.5) (2025-04-14)


### Bug Fixes

* Checkout project before the release-please step in release workflow ([80d9a35](https://github.com/main-branch/track_open_instances/commit/80d9a35ed155f3ba7e14a585e54d9ec34d2722e2))
* Specify the version file ([be826cf](https://github.com/main-branch/track_open_instances/commit/be826cfe9a8aa526cdaa3f1ecb5912641f3db38c))

## [0.1.4](https://github.com/main-branch/track_open_instances/compare/v0.1.3...v0.1.4) (2025-04-14)


### Bug Fixes

* Release workflow should checkout project ([869a7e0](https://github.com/main-branch/track_open_instances/commit/869a7e011438b57bcb810680ecdf0eb5beec193b))

## [0.1.3](https://github.com/main-branch/track_open_instances/compare/v0.1.2...v0.1.3) (2025-04-14)


### Bug Fixes

* Automatically push the new gem release to rubygems.org ([d133153](https://github.com/main-branch/track_open_instances/commit/d13315396f590fefeb07cc4b71a13c9e9709842b))
* Remove the qlty.sh integration ([4c4492b](https://github.com/main-branch/track_open_instances/commit/4c4492bb19d1f39fa96ec30ad0af12d103067e92))

## [0.1.2](https://github.com/main-branch/track_open_instances/compare/v0.1.1...v0.1.2) (2025-04-14)


### Bug Fixes

* Make small change to test release ([8304c90](https://github.com/main-branch/track_open_instances/commit/8304c905883c760e6419210be300b637f01e054d))

## [0.1.1](https://github.com/main-branch/track_open_instances/compare/v0.1.0...v0.1.1) (2025-04-14)

### Bug Fixes

* Fix several documentation and report errors ([fd17199](https://github.com/main-branch/track_open_instances/commit/fd171997871796df746c8e1312a4fdb07cb363d5))
* Start autoreleases at 0.1.0 ([5a2fad7](https://github.com/main-branch/track_open_instances/commit/5a2fad7a9cb029a5dbfb9785f979fc07bf7f127b))

## v0.1.0 (2025-04-08)

[Full Changelog](https://github.com/main-branch/track_open_instances/compare/f0fb459..v0.1.0)

Changes:

* f2d5318 chore: remove radarline-ruby from qlty checks
* 177eba8 chore: fix formatting errors reported by `qlty fmt`
* 943359f build: remove rubocop plugin from qlty
* 476f271 chore: integrate yamllint
* 56811ca fix: add qlty configuration in order to run qlty checks locally
* e83546a fix: fix continuous integration workflow issues reported by qlty.sh
* 6f67aed test: add predicate methods to determine the Ruby engine and platform
* 34e3829 build: generate JSON coverage report for qlty.sh coverage reporting
* 9db2052 docs: update README links
* 937a971 build: update code coverage reporting
* f0fb459 feat: initial implementation of TrackOpenInstances
