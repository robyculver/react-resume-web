#specify provider and version
terraform {
  required_providers {
    heroku = {
      source = "heroku/heroku"
      version = "3.2.0"
    }
  }
}

#Configure heroku provider
provider "heroku" {
  api_key = var.heroku_api_key
  email = var.heroku_user
}