require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create do |u|
      u.first_name = 'First'
      u.last_name = 'Last'
      u.email = 'user@gmail.com'
      u.password = 'Password'
      u.password_confirmation = 'Password'
    end
  end

  describe 'Validations' do
    it "is valid with all five required fields" do
      expect(@user).to be_valid
    end

    it 'is not valid without a first name' do
      @user.first_name = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without a last name' do
      @user.last_name = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without an email' do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without a password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without a password_confirmation' do
      @user.password_confirmation = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid when password and password_confirmation do not match' do
      @user.password = 'Hello'
      @user.password_confirmation = 'Password'
      expect(@user).to_not be_valid
    end

    it 'is not valid when password is less than 6 characters' do
      @user.password = 'Hello'
      @user.password_confirmation = 'Hello'
      expect(@user).to_not be_valid
    end
    
    it 'is not valid when email is not unique' do
      @user.save
      
      newUser = User.create do |u|
        u.first_name = 'First'
        u.last_name = 'Last'
        u.email = 'USER@gmail.com'
        u.password = 'Password'
        u.password_confirmation = 'Password'
      end

      expect(newUser).to_not be_valid
    end
  end

  describe '.authenticate_with_credentials' do
    it 'is valid with the valid credentials' do
      @user.save
      @userLogin = User.authenticate_with_credentials('user@gmail.com', 'Password')
      expect(@user).to_not be_nil
    end

    it 'is not valid without valid email' do
      @user.save
      @userLogin = User.authenticate_with_credentials('userhello@gmail.com', 'Password')
      expect(@userLogin).to be_nil
    end

    it 'is not valid without valid password' do
      @user.save
      @userLogin = User.authenticate_with_credentials('user@gmail.com', 'Password123')
      expect(@userLogin).to be_nil
    end

    it 'is valid using valid email but with extra spacing' do
      @user.save
      @userLogin = User.authenticate_with_credentials(' user@gmail.com ', 'Password')
      expect(@userLogin).to_not be_nil
    end

    it 'is valid using valid email but with different case' do
      @user.save
      @userLogin = User.authenticate_with_credentials('UsER@gmail.com', 'Password')
      expect(@userLogin).to_not be_nil
    end





  end
end
