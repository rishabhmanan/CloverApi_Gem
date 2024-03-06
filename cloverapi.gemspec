require File.expand_path('lib/cloverapi/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'cloverapi'
  spec.version               = Cloverapi::VERSION
  spec.authors               = ['Rishabh Manan']
  spec.email                 = ['rishabhmanan21@gmail.com']
  spec.summary               = 'Clover APIs inegration for Ruby on Rails'
  spec.description           = 'This gem allows to fetch the data from Clover through the Clover APIs themselves'
  spec.homepage              = 'https://github.com/rishabhmanan/CloverApi_Gem'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.5.0'

  spec.add_dependency 'rubyzip', '~> 2.3'
  spec.add_dependency 'activesupport', '~> 6.1'
  spec.add_dependency 'rake', '~> 13.0'
  spec.add_dependency 'rspec', '~> 3.0'
  # spec.add_dependency 'dotenv-rails'
  spec.add_development_dependency 'rubocop', '~> 0.60'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.37'

  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "net-http"

end
