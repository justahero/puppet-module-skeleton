source 'https://rubygems.org'

gem 'puppet', ENV['PUPPET_GEM_VERSION'] || '~> 4.0'
gem 'facter'

group :test do
  gem 'puppetlabs_spec_helper'
  gem 'puppet-lint'
  gem 'puppet-syntax'

  gem 'metadata-json-lint'

  gem 'rspec', '~> 3.5.0'
  gem 'rspec-puppet'
  gem 'rspec-puppet-facts'
  gem 'rspec-puppet-utils'

  gem 'rake', '~> 12.0'

  gem 'pry-byebug'
  gem 'webmock'
end

group :development do
  gem "guard-rake", require: false
end

group :system_tests do
  gem 'beaker', '~> 2.5'
  gem 'beaker-rspec', '~> 5.3.0'
  gem 'serverspec'
  gem 'beaker-puppet_install_helper'
  gem "vagrant-wrapper"
end
