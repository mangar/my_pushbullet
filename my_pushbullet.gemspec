$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "my_pushbullet/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "my_pushbullet"
  s.version     = MyPushbullet::VERSION
  s.authors     = ["Marcio Mangar"]
  s.email       = ["marcio.mangar@gmail.com"]
  s.homepage    = "http://github.com/mangar/my_pushbullet"
  s.summary     = "Summary of MyPushbullet."
  s.description = "Description of MyPushbullet."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.3"

  s.add_development_dependency "sqlite3"
end
