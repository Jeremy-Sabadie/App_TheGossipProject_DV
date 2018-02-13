require 'rails_helper'

RSpec.describe User, type: :model do

		context "creation" do
   		it "should persist a user" do    
    		user = User.create(username: "dede", email: "dede@de.com", password: "password", sign_up_code: "GOSSIP_2017")
   			expect(user).to be_valid
   		end
 		end



    context 'email' do
      it "should not be null" do
  	   user = User.create(username: "dede
  	   	", email: "", password: "password", sign_up_code: "GOSSIP_2017")
  	   user.validate
  	   expect(user.valid?).to be false
      end

      it "should not be empty" do
  	   User.create(username: "dede
  	   	", email: "   ", password: "password", sign_up_code: "GOSSIP_2017")
  	   expect(User.count).to eq(0)
      end

      it "should not be an email" do
  	   User.create(username: "dede
  	   	", email: "dedede", password: "password", sign_up_code: "GOSSIP_2017")
  	   expect(User.count).to eq(0)
      end
	  end

	  context 'password' do
      it "should not be null" do
  	   user = User.create(username: "dede
  	   	", email: "dede@de.com", password: "", sign_up_code: "GOSSIP_2017")
  	   user.validate
  	   expect(user.valid?).to be false
      end

      it "should not be empty" do
  	   User.create(username: "dede
  	   	", email: "dede@de.com", password: "     ", sign_up_code: "GOSSIP_2017")
  	   expect(User.count).to eq(0)
      end

      it "should not be less than 6 char" do
  	   User.create(username: "dede
  	   	", email: "dede@de.com", password: "dede
  	   ", sign_up_code: "GOSSIP_2017")
  	   expect(User.count).to eq(0)
      end
	  end

    context 'username' do
      it "should not be null" do
  	   user = User.create(username: "", email: "dede@de.com", password: "password", sign_up_code: "GOSSIP_2017")
  	   user.validate
  	   expect(user.valid?).to be false
      end

      it "should not be empty" do
  	   User.create(username: "     ", email: "dede@de.com", password: "password", sign_up_code: "GOSSIP_2017")
  	   expect(User.count).to eq(0)
      end
	  end

	  context 'signupcode' do
      it "should not be null" do
  	   user = User.create(username: "dede
  	   	", email: "dede@de.com", password: "password", sign_up_code: "")
  	   user.validate
  	   expect(user.valid?).to be false
      end

      it "should not be empty" do
  	   User.create(username: "dede
  	   	", email: "dede@de.com", password: "password", sign_up_code: "    ")
  	   expect(User.count).to eq(0)
      end

      it "should not be false" do
  	   User.create(username: "dede
  	   	", email: "dede@de.com", password: "password", sign_up_code: "yoooa")
  	   expect(User.count).to eq(0)
      end
	  end
end
