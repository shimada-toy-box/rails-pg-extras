# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-pg-extras/version'

Gem::Specification.new do |gem|
  gem.name          = "rails-pg-extras"
  gem.version       = RailsPGExtras::VERSION
  gem.authors       = ["pawurb"]
  gem.email         = ["contact@pawelurbanek.com"]
  gem.summary       = %q{ Rails PostgreSQL performance database insights }
  gem.description   = %q{ Rails port of Heroku PG Extras. The goal of this project is to provide a powerful insights into PostgreSQL database for Ruby on Rails apps that are not using the default Heroku PostgreSQL plugin. }
  gem.homepage      = "http://github.com/pawurb/rails-pg-extras"
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  gem.require_paths = ["lib"]
  gem.license       = "MIT"
  gem.add_dependency "ruby-pg-extras", RailsPGExtras::VERSION
  gem.add_dependency "activerecord"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
