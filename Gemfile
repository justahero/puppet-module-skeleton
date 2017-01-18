source 'https://rubygems.org'

gem 'puppet', ENV['PUPPET_GEM_VERSION'] || '~> 4.0'

group :test do
  gem 'puppetlabs_spec_helper'
  gem 'puppet-lint'
  gem 'puppet-syntax'

  gem 'facter'
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
