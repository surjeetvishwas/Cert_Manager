
# Create the New Relic alert policy
resource "newrelic_alert_policy" "cert_manager_policy" {
  name = "Cert Manager Alert Policy"
}

# Create the certificate expiration alert condition
resource "newrelic_nrql_alert_condition" "cert_expiration" {
  policy_id = newrelic_alert_policy.cert_manager_policy.id
  name      = "Certificate Expiration"
  enabled   = var.certificate_expiration_enabled

  aggregation_method           = "event_flow"
  aggregation_delay            = var.certificate_expiration_aggregation_delay
  aggregation_window           = var.certificate_expiration_aggregation_window
  violation_time_limit_seconds = var.violation_time_limit_default
  fill_option                  = "last_value"
  expiration_duration          = var.certificate_expiration_expiration_duration
  close_violations_on_expiration = true

  nrql {
    query = format(
      "FROM Metric SELECT latest(cermanager_certificate_expiration_timestamp_seconds) WHERE clusterName = '%s' %s FACET certificateName",
      var.cluster_name,
      var.certificate_expiration_extra_conditions
    )
  }

  critical {
    operator              = "below"
    threshold             = var.certificate_expiration_critical_threshold
    threshold_duration    = var.certificate_expiration_critical_threshold_duration
    threshold_occurrences = "ALL"
  }

  warning {
    operator              = "below"
    threshold             = var.certificate_expiration_warning_threshold
    threshold_duration    = var.certificate_expiration_warning_threshold_duration
    threshold_occurrences = "ALL"
  }
}

# Create the certificate renewal alert condition
resource "newrelic_nrql_alert_condition" "cert_renewal" {
  policy_id = newrelic_alert_policy.cert_manager_policy.id
  name      = "Certificate Renewal"
  enabled   = var.certificate_renewal_enabled

  aggregation_method           = "event_flow"
  aggregation_delay            = var.certificate_renewal_aggregation_delay
  aggregation_window           = var.certificate_renewal_aggregation_window
  violation_time_limit_seconds = var.violation_time_limit_default
  fill_option                  = "last_value"
  expiration_duration          = var.certificate_renewal_expiration_duration
  close_violations_on_expiration = true

  nrql {
    query = format(
      "FROM Metric SELECT latest(cermanager_certificate_renewal_timestamp_seconds) WHERE clusterName = '%s' %s FACET certificateName",
      var.cluster_name,
      var.certificate_renewal_extra_conditions
    )
  }

  critical {
    operator              = "above"
    threshold             = var.certificate_renewal_critical_threshold
    threshold_duration    = var.certificate_renewal_critical_threshold_duration
    threshold_occurrences = "ALL"
  }
}
