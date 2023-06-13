variable "newrelic_api_key" {
  description = "API Key for authenticating with New Relic"
  type        = string
}

variable "cluster_name" {
  description = "Name of the cluster"
  type        = string
}

variable "certificate_expiration_enabled" {
  description = "Enable/disable option for certificate expiration alert"
  type        = bool
  default     = true
}

variable "certificate_expiration_aggregation_window" {
  description = "The duration of the time window used to evaluate the NRQL query (in seconds) for certificate expiration alert"
  type        = number
  default     = 3600
}

variable "certificate_expiration_aggregation_delay" {
  description = "How long to wait for data that belongs in each aggregation window for certificate expiration alert"
  type        = number
  default     = 120
}

variable "certificate_expiration_expiration_duration" {
  description = "The amount of time (in seconds) to wait before considering the signal expired for certificate expiration alert"
  type        = number
  default     = 120
}

variable "certificate_expiration_critical_threshold" {
  description = "The value which will trigger a critical incident for certificate expiration alert"
  type        = number
  default     = 604800
}

variable "certificate_expiration_critical_threshold_duration" {
  description = "The duration, in seconds, that the threshold must violate to create a critical incident. Value must be a multiple of the aggregation window for certificate expiration alert"
  type        = number
  default     = 3600
}

variable "certificate_expiration_warning_threshold" {
  description = "The value which will trigger a warning incident for certificate expiration alert"
  type        = number
  default     = 1209600
}

variable "certificate_expiration_warning_threshold_duration" {
  description = "The duration, in seconds, that the threshold must violate to create a warning incident. Value must be a multiple of the aggregation window for certificate expiration alert"
  type        = number
  default     = 3600
}

variable "certificate_expiration_extra_conditions" {
  description = "Additional conditions to `WHERE` clause in NRQL queries for certificate expiration alert"
  type        = string
  default     = ""
}

variable "certificate_renewal_enabled" {
  description = "Enable/disable option for certificate renewal alert"
  type        = bool
  default     = true
}

variable "certificate_renewal_aggregation_window" {
  description = "The duration of the time window used to evaluate the NRQL query (in seconds) for certificate renewal alert"
  type        = number
  default     = 3600
}

variable "certificate_renewal_aggregation_delay" {
  description = "How long to wait for data that belongs in each aggregation window for certificate renewal alert"
  type        = number
  default     = 120
}

variable "certificate_renewal_expiration_duration" {
  description = "The amount of time (in seconds) to wait before considering the signal expired for certificate renewal alert"
  type        = number
  default     = 120
}

variable "certificate_renewal_critical_threshold" {
  description = "The value which will trigger a critical incident for certificate renewal alert"
  type        = number
  default     = 0
}

variable "certificate_renewal_critical_threshold_duration" {
  description = "The duration, in seconds, that the threshold must violate to create a critical incident. Value must be a multiple of the aggregation window for certificate renewal alert"
  type        = number
  default     = 3600
}

variable "certificate_renewal_extra_conditions" {
  description = "Additional conditions to `WHERE` clause in NRQL queries for certificate renewal alert"
  type        = string
  default     = ""
}

variable "violation_time_limit_default" {
  description = "The maximum duration (in seconds) for which an incident is considered to be open"
  type        = number
  default     = 86400
}
