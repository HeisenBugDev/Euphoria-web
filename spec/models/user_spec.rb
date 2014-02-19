require 'spec_helper'

describe User do
  before do
    @user = FactoryGirl.create(:user)
  end

  subject { @user }

  it { should respond_to(:login) }

  describe "when name is not present" do
    before { @user.username = ' ' }
    it { should_not be_valid }
  end

  describe "when email is not present" do
    before { @user.email = ' ' }
    it { should_not be_valid }
  end

  describe "when email is not valid" do
    before { @user.email = 'ilovebacon@example@.com' }
    it { should_not be_valid }
  end
end
