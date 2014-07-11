$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/admin/job_offers/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-admin-job-offers"
  s.version     = NoCms::Admin::JobOffers::VERSION
  s.authors     = ["Simplelogica"]
  s.email       = ["gems@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-pages"
  s.summary     = "Gem with events functionality independent from any CMS and embeddable in any Rails 4 app"
  s.description = "Gem with events functionality independent from any CMS and embeddable in any Rails 4 app"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", '~> 4.0', '>= 4.0.0'
  s.add_dependency "nocms-admin", '~> 0.0', '>= 0.0.1'
  s.add_dependency "nocms-job-offers", '~> 0.0', '>= 0.0.1'

  s.add_development_dependency "sqlite3"
end
