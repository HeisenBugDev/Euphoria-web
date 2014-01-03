require 'spec_helper'

describe ApplicationHelper do
  describe "git SHA" do
    it 'should be the correct length' do
      expect(get_SHA.length).to eq(40)
      expect(get_short_SHA.length).to eq(7)
    end
  end

  describe "Flash classes" do
    it 'should respond with the correct class' do
      expect(flash_class(:notice)).to eq('info')
      expect(flash_class(:error)).to eq('error')
      expect(flash_class(:alert)).to eq('warning')
    end
  end
end