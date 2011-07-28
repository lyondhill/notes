# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "note/version"

Gem::Specification.new do |s|
  s.name        = "note"
  s.version     = Note::VERSION
  s.authors     = ["Lyon", "Clay"]
  s.email       = ["lyon@delorum.com", "clay@delorum.com"]
  s.homepage    = "http://lyon.pagodabox.com"
  s.summary     = %q{console based Note system}
  s.description = %q{Type note -h for options}

  s.rubyforge_project = "note"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
