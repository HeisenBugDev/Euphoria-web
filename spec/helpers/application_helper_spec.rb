require 'spec_helper'

describe ApplicationHelper do
  describe "git SHA" do
    it 'should be the correct length' do
      expect(get_SHA.length).to eq(40)
      expect(get_short_SHA.length).to eq(7)
    end
  end
end