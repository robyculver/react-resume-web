  
variable "heroku_pipeline_name" {}
variable "heroku_stack" {}
variable "heroku_api_key" {}
variable "heroku_user" {}
variable "heroku_dev_app" {}
variable "heroku_prod_app" {}
variable "heroku_region" {}
variable "heroku_app_buildpacks" { type = list(string) }