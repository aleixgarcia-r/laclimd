
######
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.15 syntax, which means it is no longer compatible with any versions below 0.15.
######
terraform {
  required_version = ">= 0.15"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.0"
    }
  }
}
