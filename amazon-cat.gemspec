# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'amazon-cat'

Gem::Specification.new do |spec|
  spec.name          = 'amazon-cat'
  spec.version       = Amazon::Cat::VERSION
  spec.authors       = ['Masayuki Higashino']
  spec.email         = ['mh.on.web@gmail.com']

  spec.summary       = 'Amazon Cat: A CLI to search books in Amazon'
  spec.description   = 'Amazon Cat: A CLI to search books in Amazon'
  spec.homepage      = 'https://github.com/mh61503891/amazon-cat'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'amazon-ecs', '~> 2.5'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-nyan-cat'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'awesome_print'
end
