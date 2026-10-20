terraform {
  required_version = ">= 1.5.0"
}

variable "run01_sensitive_canary" {
  description = "Fictional RUN-01 canary supplied only through a Spacelift secret environment variable."
  type        = string
  sensitive   = true
}

output "run01_public_control" {
  description = "Harmless public control used to confirm normal output rendering."
  value       = "RUN01_PUBLIC_CONTROL_20261020"
}

output "run01_sensitive_output" {
  description = "Sensitive fictional canary used to assess masking across authorised read paths."
  value       = var.run01_sensitive_canary
  sensitive   = true
}
