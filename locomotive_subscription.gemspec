$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "locomotive_subscription/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "locomotive_subscription"
  s.version     = LocomotiveSubscription::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LocomotiveSubscription."
  s.description = "TODO: Description of LocomotiveSubscription."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_dependency "whenever"
  s.add_dependency "locomotive_cms", '~> 2.2.2'
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mongodb"
end
