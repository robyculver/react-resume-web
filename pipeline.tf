
#create heroku pipeline
resource "heroku_pipeline" "resume-site" {
  name = "resume-site"
}

#Couple apps to pipeline
resource "heroku_pipeline_coupling" "development"{
  app = heroku_app.develop.name
  pipeline = heroku_pipeline.resume-site.id
  stage = "development"
}
resource "heroku_pipeline_coupling" "production"{
  app = heroku_app.prod.name
  pipeline = heroku_pipeline.resume-site.id
  stage = "production"
  depends_on = [heroku_pipeline.resume-site]
}