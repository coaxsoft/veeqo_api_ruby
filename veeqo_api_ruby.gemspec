
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'veeqo/version'

Gem::Specification.new do |spec|
  spec.name = 'veeqo_api_ruby'
  spec.version = Veeqo::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.0.0'
  spec.license = 'MIT'

  spec.authors       = ['Yurkiv Misha']
  spec.email         = ['m.yurkiv@coaxsoft.com']
  spec.summary       = 'Ruby client library for the Veeqo API'
  spec.description   = spec.summary
  spec.homepage = 'https://github.com/coaxsoft/veeqo_api_ruby'

  spec.require_paths = ['lib']
  spec.files = Dir['README.md', 'lib/**/*', 'veeqo.gemspec']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-nc'

  spec.add_dependency 'faraday', '~> 0.13.1'
  spec.add_dependency 'oj'
  spec.add_dependency 'faraday_middleware', '~> 0.10.0'
  spec.add_dependency 'hashie', '~> 3.4'
  spec.add_dependency 'jwt', '~> 1.5.4'
end
