source 'https://rubygems.org'

gem 'puppet', ENV['PUPPET_GEM_VERSION'] || '~> 4.10'
gem 'facter'
gem 'json', '~> 1.8.6'

group :test do
  gem 'puppetlabs_spec_helper', '~> 2.9.1'
  gem 'puppet-lint'
  gem 'puppet-syntax'

  gem 'metadata-json-lint'

  gem 'rspec', '~> 3.7.0'
  gem 'rspec-puppet', '~> 2.6.14'
  gem 'rspec-puppet-facts', '~> 1.8.0'
  gem 'rspec-puppet-utils', '~> 2.2.0'

  gem 'rake', '~> 12.0'

  gem 'pry-byebug'
  gem 'webmock'
end

group :development do
  gem "guard-rake", require: false
end

group :system_tests do
  gem 'beaker', '~> 2.52'
  gem 'beaker-rspec', '~> 5.3.0'
  gem 'serverspec'
  gem 'beaker-puppet_install_helper'
  gem "vagrant-wrapper"
end
