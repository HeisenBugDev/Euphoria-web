require 'spec_helper'

describe Api::StatsController do
  describe 'Authentication' do
    describe 'If authentication not provided' do
      it 'Should give you 401' do
        get 'show' do
          should respond_with 401
        end
      end
    end
  end

  describe 'If authentication is provided' do
    before do
      @user = FactoryGirl.create(:user)
    end

    it 'Should give you a 200' do
      get 'show', nil, {'X-User-Email' => @user.email, 'X-User-Token' => @user.authentication_token} do
        should respond_with 200
      end
    end
  end
end
