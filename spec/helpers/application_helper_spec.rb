require 'spec_helper'

describe ApplicationHelper do
  describe "Page" do
    before { `git checkout c413d31` }
    @branch = `git rev-parse --abbrev-ref HEAD`

    it 'should display the correct version' do
      expect(get_short_SHA).to eq('c413d31')
    end
    puts @branch
    after { `git checkout #{@branch}` }
  end
end