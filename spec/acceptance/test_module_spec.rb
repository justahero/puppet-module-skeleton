require 'spec_helper_acceptance'

describe 'test_module class' do
  context 'with defaults' do
    it 'runs idempotently' do
      pp = <<-EOS
      class { '::test_module': }
      EOS

      apply_manifest(pp, catch_failures: true)
      apply_manifest(pp, catch_changes: true)
    end
  end
end
