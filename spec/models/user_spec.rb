require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'Validations' do

    it "is valid with name, last_name, email, password, password_confirmation" do
      user = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      expect(user).to be_valid
    end

    it "is not valid without name" do
      user = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      user.name = nil
      expect(user).not_to be_valid
    end
    
    it "is not valid without password_confirmation" do
      user = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      user.password_confirmation = nil
      expect(user).not_to be_valid
    end

    it "is valid when password matches password_confirmation" do
      user = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      expect(user.password).to eq(user.password_confirmation)
    end

    it "is valid only with single occurency email" do 
      user = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      expect(User.where(email: user.email).count).to be(1)
      user2 = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      expect(User.where(email: user.email).count).not_to be(2)
    end

    it "is valid when password length has 6 or more characters" do
      user = User.create(name: "Ricardo", last_name: "Barbosa", email: "rbarbosa@email.com" , password: "password" , password_confirmation: "password")
      expect(user.password).to have_attributes(size: (be > 6))
    end


  end


  describe ".authenticate_with_credentials" do
  end



end
