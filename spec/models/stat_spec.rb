require 'spec_helper'

describe Stat do
  before do
    @stat = Stat.new(:identifier => 'foobar', :quantity => '1')
  end

  describe "no type" do
    it 'should not be valid' do
      @stat.identifier = ''
      @stat.should_not be_valid
    end
  end

  describe "no quantity" do
    it 'should not be valid' do
      @stat.quantity = nil
      @stat.should_not be_valid
    end
  end

end
