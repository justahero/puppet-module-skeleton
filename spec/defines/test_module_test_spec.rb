require 'spec_helper'

describe 'puppet_module_skeleton::test' do
  let(:title) { "test" }
  let(:node) { "default" }
  let(:environment) { "development" }

  on_supported_os.each do |os, facts|
    describe "on #{os}" do
      let(:facts) do
        facts.merge({
          'scenario' => '',
          'common' => ''
        })
      end

      context 'with defaults' do
        let(:params) { {} }

        it { is_expected.to compile }
      end
    end
  end
end
