require 'rspec-puppet'
require 'rspec-puppet-utils'
require 'rspec-puppet-facts'
include RspecPuppetFacts

require 'webmock'
require 'webmock/rspec'

WebMock.disable_net_connect!(:allow_localhost => true)

def fixture_path
    File.expand_path(File.join(__FILE__, '..', 'fixtures'))
end

$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + '/../'))

RSpec.configure do |c|
  c.add_setting :fixture_path, :default => fixture_path
  c.mock_with :rspec

  c.hiera_config = File.join(fixture_path, 'hiera', 'hiera.yaml')
  c.module_path  = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
end

require 'puppetlabs_spec_helper/module_spec_helper'
