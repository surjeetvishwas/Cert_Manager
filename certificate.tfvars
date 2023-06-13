newrelic_api_key = "YOUR_NEW_RELIC_API_KEY"
cluster_name = "YOUR_CLUSTER_NAME"

# Certificate Expiration Alert
certificate_expiration_enabled                      = true
certificate_expiration_aggregation_window           = 3600
certificate_expiration_aggregation_delay            = 120
certificate_expiration_expiration_duration          = 120
certificate_expiration_critical_threshold           = 604800
certificate_expiration_critical_threshold_duration  = 3600
certificate_expiration_warning_threshold            = 1209600
certificate_expiration_warning_threshold_duration   = 3600
certificate_expiration_extra_conditions             = ""

# Certificate Renewal Alert
certificate_renewal_enabled                          = true
certificate_renewal_aggregation_window               = 3600
certificate_renewal_aggregation_delay                = 120
certificate_renewal_expiration_duration              = 120
certificate_renewal_critical_threshold               = 0
certificate_renewal_critical_threshold_duration      = 3600
certificate_renewal_extra_conditions                 = ""

violation_time_limit_default                         = 86400
