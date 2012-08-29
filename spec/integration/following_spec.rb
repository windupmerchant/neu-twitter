require 'spec_helper'

describe 'when A_user visits B_user' do
  before :all do
    @a_user = User.find 1
    @b_user = User.find 2
  end

  context "B_user's page" do
    it "should have B_user's name" do
      visit user_path @b_user
      page.has_content? 'Name: asdsfdhgf'
    end
  end
  
  context 'and clicks the follow button' do
    it "the B_user's stories should appear in A_user's timeline"
  end
end