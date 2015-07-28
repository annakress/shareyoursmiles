require 'spec_helper'

describe "Welcome" do
  describe "Add a smile" do
    it "Adds a new smile and displays the results TEST NOT COMPLETE YET" do
      visit  "/"
      #expect{
        # click_link 'New Contact'
        fill_in 'smile_smiletext', with: "My Test Smile comes here"
        # TODO fill_in 'smile_username', with: "Test Person"
        # TODO fill_in 'smile_country', with: "Testcountry"
        click_button "Share your smile"
      #}.to change(Smile,:count).by(1)
      page.should have_content "My Test Smile comes here"
      #page.should have_content "Test Person"
      #page.should have_content "Testcountry"
    end
  end
end
