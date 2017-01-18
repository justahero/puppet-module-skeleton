require 'spec_helper_acceptance'

describe 'testmodule class' do
  context 'with defaults' do
    it 'runs idempotently' do
      pp = <<-EOS
      class { '::testmodule': }
      EOS

      apply_manifest(pp, catch_failures: true)
      apply_manifest(pp, catch_changes: true)
    end
  end
end
