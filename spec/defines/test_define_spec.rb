require 'spec_helper'

describe 'test_define', type: :define do
  let(:title) { "test" }

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
