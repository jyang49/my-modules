/**
 *
 * Copyright 2021 Box
 *
 */

module "pubsub_wrapper" {
  for_each = toset(var.topic_list)
  source   = "git::https://github.com/terraform-google-modules/terraform-google-pubsub?ref=v3.2.0"

  project_id = var.project_id

  create_topic        = var.create_topic
  topic               = each.key
  grant_token_creator = var.grant_token_creator

  pull_subscriptions = [
    {
      name = "${each.key}-subscriber"

      ack_deadline_seconds       = var.ack_deadline_seconds
      enable_message_ordering    = var.enable_message_ordering
      expiration_policy          = var.expiration_policy
      maximum_backoff            = var.maximum_backoff
      message_retention_duration = var.message_retention_duration
      minimum_backoff            = var.minimum_backoff
      retain_acked_messages      = var.retain_acked_messages
    }
  ]
}
