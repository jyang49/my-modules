variable "ack_deadline_seconds" {
  description = "Max time in seconds after a subscriber receives a msg before they should ack."
  type        = number
  default     = 10
}

variable "create_topic" {
  description = "Create topic."
  type        = bool
  default     = false
}

variable "enable_message_ordering" {
  description = "Enable message ordering."
  type        = bool
  default     = false
}

variable "expiration_policy" {
  description = "Value expiration policy."
  type        = string
  default     = ""
}

variable "maximum_backoff" {
  description = "Value determines max backoff in seconds."
  type        = string
  default     = "600s"
}

variable "message_retention_duration" {
  description = "Value determines how long messages are retained for."
  type        = string
  default     = "604800s"
}

variable "minimum_backoff" {
  description = "Value determines min backoff in seconds."
  type        = string
  default     = "10s"
}

variable "project_id" {
  description = "Project id topics will be created."
  type        = string
}

variable "retain_acked_messages" {
  description = "Retain messages after acknowledging."
  type        = bool
  default     = false
}

variable "topic_list" {
  description = "List of topics to create."
  type        = set(string)
  default     = []
}

variable "grant_token_creator" {
  type        = bool
  description = "Specify true if you want to add token creator role to the default Pub/Sub SA"
  default     = false
}
