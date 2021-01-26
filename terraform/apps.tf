  
resource "heroku_app" "develop" {
  name = var.heroku_dev_app
  region = var.heroku_region
  stack = var.heroku_stack
  config_vars = {
    APP_ENV = "develop"
  }
  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_app" "prod" {
  name = var.heroku_prod_app
  region = var.heroku_region
  stack = var.heroku_stack
  config_vars = {
    APP_ENV = "prod"
  }
  buildpacks = var.heroku_app_buildpacks
}

resource "heroku_build" "develop" {
    app = heroku_app.develop.name
    source = {
      url = "https://github.com/robyculver/react-resume-web"
      version = "1.0.0"
    }
}

resource "heroku_formation" "develop" {
  app        = heroku_app.develop.id
  type       = "web"
  quantity   = 1
  size       = "Standard-1x"
  depends_on = [heroku_build.develop]
}