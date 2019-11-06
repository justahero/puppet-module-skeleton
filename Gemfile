source 'https://rubygems.org'

gem 'puppet', ENV['PUPPET_GEM_VERSION'] || '~> 4.0'
gem 'facter'

group :test do
  gem 'puppetlabs_spec_helper', '~> 2.14.1'
  gem 'puppet-lint', '~> 2.4.2'
  gem 'puppet-syntax', '~> 2.6.0'

  gem 'metadata-json-lint', '~> 2.2.0'

  gem 'rspec', '~> 3.9.0'
  gem 'rspec-puppet', '~> 2.7.8'
  gem 'rspec-puppet-facts', '~> 1.9.6'
  gem 'rspec-puppet-utils', '~> 3.4.0'

  gem 'rake', '~> 12.0'

  gem 'pry-byebug', '~> 3.7.0'
  gem 'webmock'
end

group :development do
  gem "guard-rake", require: false
end

group :system_tests do
  gem 'beaker', '~> 4.13.1'
  gem 'beaker-rspec', '~> 6.2.4'
  gem 'serverspec', '~> 2.41.5'
  gem 'beaker-puppet_install_helper', '~> 0.9.8'
  gem "vagrant-wrapper"
end
