# Change Log

## [0.1.11](https://github.com/main-branch/track_open_instances/compare/v0.1.10...v0.1.11) (2025-04-15)


### Features

* Initial implementation of TrackOpenInstances ([f0fb459](https://github.com/main-branch/track_open_instances/commit/f0fb459b35173635900e0d6f1a7bb7e3188c6914))


### Bug Fixes

* Add qlty configuration in order to run qlty checks locally ([56811ca](https://github.com/main-branch/track_open_instances/commit/56811ca9f9eab200780dd80b9946402db85a5dc0))
* Auto push new version of gem to rubygems.org ([4740681](https://github.com/main-branch/track_open_instances/commit/4740681f90dad73c36622cbf0a23e43713742d0c))
* Fix continuous integration workflow issues reported by qlty.sh ([e83546a](https://github.com/main-branch/track_open_instances/commit/e83546ac4038581d9fcf445f0fb82f098bb4ff2d))
* Remove integration to CodeClimate and qlty ([47b0c09](https://github.com/main-branch/track_open_instances/commit/47b0c090303ff68a003a52b4b363fdb7528e289b))
* Update TrackOpenInstances docs and report ([7575c1f](https://github.com/main-branch/track_open_instances/commit/7575c1f5a3947ff3e66e79f099e7dcdd6203e653))

## v0.1.0 (2025-04-08)

[Full Changelog](https://github.com/main-branch/track_open_instances/compare/f0fb459..v0.1.0)

Changes:

- f2d5318 chore: remove radarline-ruby from qlty checks
- 177eba8 chore: fix formatting errors reported by `qlty fmt`
- 943359f build: remove rubocop plugin from qlty
- 476f271 chore: integrate yamllint
- 56811ca fix: add qlty configuration in order to run qlty checks locally
- e83546a fix: fix continuous integration workflow issues reported by qlty.sh
- 6f67aed test: add predicate methods to determine the Ruby engine and platform
- 34e3829 build: generate JSON coverage report for qlty.sh coverage reporting
- 9db2052 docs: update README links
- 937a971 build: update code coverage reporting
- f0fb459 feat: initial implementation of TrackOpenInstances
