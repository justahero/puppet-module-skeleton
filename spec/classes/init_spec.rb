require 'spec_helper'

describe 'test_module' do
  context 'with defaults' do
    it { is_expected.to compile }
    it { is_expected.to contain_class('test_module') }
  end
end
