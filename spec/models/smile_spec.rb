require 'rails_helper'

RSpec.describe Smile, :type => :model do

  it "has a valid factory" do
    FactoryGirl.create(:smile).should be_valid
  end

  it "is invalid without a smiletext" do
    FactoryGirl.build(:smile, smiletext: nil).should_not be_valid
  end
   
end
