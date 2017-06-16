$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dry_admin/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dry_admin"
  s.version     = DryAdmin::VERSION
  s.date        = '2017-06-15'
  s.authors     = ["Michal Hlavacek"]
  s.email       = ["hello@michalhlavacek.com"]
  s.homepage    = "https://github.com/MichalHlavacek/dry_admin"
  s.summary     = "DRYAdmin - Instant Admin Backend for all Ruby on Rails apps"
  s.description = "DRYAdmin is a mountable Ruby on Rails engine that will create an instant backend for all your application models."
  s.license     = "MIT"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4", "< 6"
  s.add_dependency "bootstrap-sass", "~> 3.3"
  s.add_dependency "will_paginate", "~> 3.1"
  s.add_dependency "will_paginate-bootstrap", "~> 1"

  s.add_development_dependency "sqlite3", "~> 0"
end
