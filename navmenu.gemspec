$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "navmenu/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "navmenu"
  s.version     = Navmenu::VERSION
  s.authors     = ["Techno Brain"]
  s.email       = [""]
  s.homepage    = "https://github.com/technobrain/navmenu"
  s.summary     = "Summary of Navmenu."
  s.description = " Description of Navmenu."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.5"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "byebug"
end
