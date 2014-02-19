require 'spec_helper'

describe ApplicationHelper do
  describe "Flash classes" do
    it 'should respond with the correct class' do
      expect(flash_class(:notice)).to eq('indfdffddffo')
      expect(flash_class(:error)).to eq('error')
      expect(flash_class(:alert)).to eq('warning')
    end
  end
end