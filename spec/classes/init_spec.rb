require 'spec_helper'

describe 'test_module', :type => 'class' do
  on_supported_os.each do |os, facts|
    describe "on #{os}" do
      let(:facts) do
        facts.merge({
          'scenario' => '',
          'common' => '',
        })
      end

      context 'with defaults' do
        it { is_expected.to compile }
        it { is_expected.to contain_class('test_module') }
      end

      context 'with test hiera data' do
        let(:facts) do
          super().merge('scenario' => 'test')
        end

        it { is_expected.to compile }
      end
    end
  end
end
