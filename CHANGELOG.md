# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- Add `awsPartition` value to support non-standard AWS partitions (e.g. China).
- Add `oidcDomain` and `oidcDomains` values to support multiple OIDC providers; the IAM trust policy now iterates over all provided domains.
- Add `managed-by: external-dns-crossplane-resources` tag to the IAM role.

### Changed

- Add `io.giantswarm.application.audience: giantswarm` annotation.
- Migrate chart metadata annotations to `io.giantswarm.application.*` format.
- Move `required` validation for `awsPartition` and `accountID` into named template helpers.
- Replace deprecated `app.giantswarm.io/branch`, `application.kubernetes.io/managed-by`, and `giantswarm.io/service-type` labels with `app.kubernetes.io/*` equivalents.
- Update chart description, icon, and owning team (`cabbage`).

### Removed

- Remove `name`, `serviceType`, `project.branch`, and `project.commit` values that were leftover hackathon scaffolding.
- Remove hardcoded `baseDomain`-based OIDC provider URL; replaced by `oidcDomain`/`oidcDomains`.

## [0.1.6] - 2025-04-10

### Added

- Included the `giantswarm.io/cluster` label

## [0.1.5] - 2023-12-15

## [0.1.4] - 2023-12-15

## [0.1.3] - 2023-12-15

## [0.1.2] - 2023-12-15

## [0.1.2] - 2023-12-15

## [0.1.1] - 2023-12-15

## [0.1.0] - 2023-12-15

## [0.1.0] - 2023-12-15

- changed: `app.giantswarm.io` label group was changed to `application.giantswarm.io`

[Unreleased]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.6...HEAD
[0.1.6]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.5...v0.1.6
[0.1.5]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.4...v0.1.5
[0.1.4]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.3...v0.1.4
[0.1.3]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.2...v0.1.2
[0.1.2]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/giantswarm/external-dns-crossplane-resources/compare/v0.1.0...v0.1.0
[0.1.0]: https://github.com/giantswarm/external-dns-crossplane-resources/releases/tag/v0.1.0
