# Define the New Relic provider
terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "2.16.0"
    }
  }
}

provider "newrelic" {
  api_key = var.newrelic_api_key
}
