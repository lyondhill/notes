# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "notes/version"

Gem::Specification.new do |s|
  s.name        = "notes"
  s.version     = Notes::VERSION
  s.authors     = ["Lyon"]
  s.email       = ["lyon@delorum.com", "clay@delorum.com"]
  s.homepage    = "http://lyon.pagodabox.com"
  s.summary     = %q{console based Note system}
  s.description = %q{Type note -h for options}

  s.rubyforge_project = "notes"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
