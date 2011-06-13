# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "non_persistent_model/version"

Gem::Specification.new do |s|
  s.name        = "non_persistent_model"
  s.version     = NonPersistentModel::VERSION
  s.authors     = ["ecoologic"]
  s.email       = ["erikecoologic@gmail.com"]
  s.homepage    = "https://github.com/ecoologic/non_persistent_model"
  s.summary     = %q{Non persistent model for forms}
  s.description = %q{Provide a class model without persistence, useful to group data and validate forms}

  s.rubyforge_project = "non_persistent_model"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
