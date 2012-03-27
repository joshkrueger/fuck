# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "fuck/version"

Gem::Specification.new do |s|
  s.name        = "fuck"
  s.version     = Fuck::VERSION
  s.authors     = ["Josh Krueger"]
  s.email       = ["joshsinbox@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Slows down your rubies. Intentionally.}
  s.description = %q{Makes things slower, so you have to optimize the hard stuff first.}

  s.rubyforge_project = "fuck"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
