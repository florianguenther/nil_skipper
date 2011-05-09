# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "nil_skipper/version"

Gem::Specification.new do |s|
  s.name        = "nil_skipper"
  s.version     = NilSkipper::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Florian Günther"]
  s.email       = ["mail@gee-f.de"]
  s.homepage    = "https://github.com/florianguenther/nil_skipper"
  s.summary     = %q{remove nil attributes from 'to_xml' output}
  s.description = %q{nil_skipper removes nil attributes from xml serialization output (to_xml) of ActiveRecord models}

  # s.rubyforge_project = "nil_skipper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
