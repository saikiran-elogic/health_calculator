# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'health_calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "health_calculator"
  spec.version       = HealthCalculator::VERSION
  spec.authors       = ["saikiranmothe"]
  spec.email         = ["saikiran.mothe@gmail.com"]
  spec.description   = %q{HealthCaluclator : calucalate your health data :) }
  spec.summary       = %q{HealthCaluclator : calucalate your Health Data}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
