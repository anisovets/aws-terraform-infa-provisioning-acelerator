variable "repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default = "acelerator-ecr-repository"
}

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE."
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Indicates whether images are scanned for known vulnerabilities on push"
  type        = bool
  default     = true
}