# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/suite_initializer/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-suite_initializer"
  spec.version       = RSpec::SuiteInitializer::VERSION
  spec.authors       = ["Takeshi Horiuchi"]
  spec.email         = ["keshihoriuchi@gmail.com"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.homepage      = "https://github.com/keshihoriuchi/rspec-suite_initializer"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "> 2.10"
end
