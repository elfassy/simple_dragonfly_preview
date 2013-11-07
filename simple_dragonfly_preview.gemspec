$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_dragonfly_preview/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_dragonfly_preview"
  s.version     = SimpleDragonflyPreview::VERSION
  s.authors     = ["Michael Elfassy"]
  s.email       = ["michaelelfassy@gmail.com"]
  s.homepage    = ""
  s.summary     = "SimpleForm Dragonfly Image Preview"
  s.description = "Adds an image preview to your forms"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
end
