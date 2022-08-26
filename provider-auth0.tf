terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 0.34" # Refer to docs for latest version
    }
  }
}

provider "auth0" {
  domain        = "<domain>"
  client_id     = "<client-id>"
  client_secret = "<client-secret>"
  debug         = "<debug>"
}