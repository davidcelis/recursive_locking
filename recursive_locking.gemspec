$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "recursive_locking/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "recursive_locking"
  s.version     = RecursiveLocking::VERSION
  s.authors     = ["David Celis"]
  s.email       = ["me@davidcel.is"]
  s.homepage    = "https://github.com/davidcelis/recursive_locking"
  s.summary     = "Reproducing a potential bug with Rack::MockRequest"
  s.description = "Example code to reproduce a bug with Rack::MockRequest"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rack-test"
end
