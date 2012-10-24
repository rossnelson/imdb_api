# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omdb/version'

Gem::Specification.new do |gem|
  gem.name          = "omdb_api"
  gem.version       = OmdbApi::VERSION
  gem.authors       = ["Ross Nelson"]
  gem.email         = ["axcess1@me.com"]
  gem.description   = %q{utilize omdbapi.com to retrive movie info}
  gem.summary       = %q{utilize omdbapi.com to retrive movie info}
  gem.homepage      = "http://github.com/rossnelson/omdb_api"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.date          = %q{2011-08-12}
  gem.require_paths = ["lib"]

  gem.add_dependency(%q<json>, [">= 0"])
  gem.add_dependency(%q<shoulda>, [">= 0"])
end
