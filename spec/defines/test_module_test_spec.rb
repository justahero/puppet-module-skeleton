require 'spec_helper'

describe 'test' do
  let(:title) { "test" }
  let(:node) { "test.example.com" }
  let(:environment) { "development" }

  on_supported_os.each do |os, facts|
    describe "on #{os}" do
      let(:pre_condition) do
        <<-EOS
        include test_module
        EOS
      end
    
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
