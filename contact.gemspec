$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contact/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "flyover-contact"
  s.version     = Contact::VERSION
  s.authors     = ["David Van Der Beek"]
  s.email       = ["david@flyoverworks.com"]
  s.homepage    = "https://github.com/flyoverworks/contact"
  s.summary     = "Easily add a contact page with working form to your Rails app."
  s.description = "Easily add a contact page with working form to your Rails app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4"
  s.add_dependency "simple_form"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "sass-rails", "~> 4.0.3"
end
