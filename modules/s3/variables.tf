variable "name" {
  description = "Base name of the S3 bucket. Region and environment will be appended."
  type        = string
}

variable "region" {
  description = "AWS region the bucket is deployed in"
  type        = string
}

variable "environment" {
  description = "Environment tier (e.g. dev, prod). Versioning is always enabled for prod."
  type        = string
}

variable "enable_versioning" {
  description = "Force-enable versioning regardless of environment. Versioning is always on for prod."
  type        = bool
  default     = false
}
