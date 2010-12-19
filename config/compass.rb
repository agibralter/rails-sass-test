require 'ninesixty'
project_type            = :rails
project_path            = RAILS_ROOT if defined?(RAILS_ROOT)
environment             = Compass::AppIntegration::Rails.env
http_path               = "/"
css_dir                 = "app/stylesheets/compiled"
sass_dir                = "app/stylesheets"
cache_dir               = "tmp/sass-cache"
images_dir              = "public/images"
javascripts_dir         = "public/javascripts"
http_images_path        = "/images"
http_stylesheets_path   = "/stylesheets"
http_javascripts_path   = "/javascripts"
