  
resource "heroku_app" "develop" {
  name = var.heroku_dev_app
  region = var.heroku_region
  config_vars = {
    APP_ENV = "develop"
  }
  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_app" "prod" {
  name = var.heroku_prod_app
  region = var.heroku_region
  config_vars = {
    APP_ENV = "prod"
  }
  buildpacks = var.heroku_app_buildpacks
}

