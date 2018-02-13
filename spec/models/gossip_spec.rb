require 'rails_helper'

RSpec.describe Gossip, type: :model do

context "creation" do
   it "should persist a gossip" do
    user = User.create(username: "dede", email: "dede@de.com", password: "password", sign_up_code: "GOSSIP_2017")
    gossip = user.gossips.create(content: "blabla")
   	expect(gossip).to be_valid
   end
  end


    context 'content' do
       it "should not be null" do
  	   user = User.create(username: "dede", email: "dede@de.com", password: "password", sign_up_code: "GOSSIP_2017")
       gossip = user.gossips.create(content: "")
  	   expect(gossip.valid?).to be false
       end

       it "should not be empty" do
  	   user = User.create(username: "dede", email: "dede@de.com", password: "password", sign_up_code: "GOSSIP_2017")
       gossip = user.gossips.create(content: "   ")
  	   expect(Gossip.count).to eq(0)
       end

	end
end
