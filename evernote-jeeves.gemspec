# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'evernote/jeeves/version'

Gem::Specification.new do |spec|
  spec.name          = "evernote-jeeves"
  spec.version       = Evernote::Jeeves::VERSION
  spec.authors       = ["Fran Fabrizio"]
  spec.email         = ["fran@umn.edu"]
  spec.summary       = %q{Harvests lines with specific keywords from your Evernote notes.}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MPLv2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "evernote-thrift" 
  spec.add_runtime_dependency "sanitize"

end
