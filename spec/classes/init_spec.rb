require 'spec_helper'
describe 'fusioninventory' do

  context 'with defaults for all parameters' do
    it { should contain_class('fusioninventory') }
  end
end
