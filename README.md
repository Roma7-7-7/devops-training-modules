# devops-training-modules

Reusable Terraform modules for the `devops-training` project.

## Modules

| Module | Description |
|--------|-------------|
| [`modules/s3`](modules/s3) | Reusable S3 bucket with versioning, encryption, and public access block |

## Usage

Reference a module by pinning to a released version tag:

```hcl
module "s3" {
  source = "git::https://github.com/Roma7-7-7/devops-training-modules.git//3/s3?ref=v0.1.0"

  name        = "test-s3"
  environment = "prod"
  region      = "us-east-1"
}

```

> **Note the double slash `//`** separating the repo root from the subdirectory path — a single `/` will not work.

## Versioning

Releases follow [Semantic Versioning](https://semver.org/) via [Conventional Commits](https://www.conventionalcommits.org/):

| Commit prefix | Version bump |
|---------------|-------------|
| `fix:` | patch (0.1.0 → 0.1.1) |
| `feat:` | minor (0.1.0 → 0.2.0) |
| `feat!:` or `BREAKING CHANGE` | major (0.1.0 → 1.0.0) |

A new tag and GitHub Release are created automatically on every merge to `main`.

## Documentation

Module input/output documentation is auto-generated on each release and published to the [GitHub Wiki](../../wiki).
