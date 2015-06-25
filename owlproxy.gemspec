# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'owlproxy/version'

Gem::Specification.new do |spec|
  spec.name                 = "owlproxy"
  spec.version              = Owlproxy::VERSION
  spec.authors              = ["Masayoshi Wada"]
  spec.email                = ["developer@andantesoftware.com"]

  spec.summary              = %q{image upload proxy for YoruFukurou}
  spec.description          = %q{image upload proxy for YoruFukurou. since non tested, it might have some problems.}
  spec.homepage             = "https://github.com/masawada/owlproxy"
  spec.license              = "MIT"

  spec.files                = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir               = "bin"
  spec.executables          = ["owlproxy"]
  spec.default_executable   = "owlproxy"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sinatra", "~> 1.4"
  spec.add_development_dependency "settingslogic", "~> 2.0"
  spec.add_development_dependency "rest-client", "~> 1.8"
end
