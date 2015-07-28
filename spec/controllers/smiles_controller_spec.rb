require 'rails_helper'

RSpec.describe SmilesController, :type => :controller do

  describe "GET #index" do

    it "populates an array of smiles" do
      smile = FactoryGirl.create(:smile)
      get :index
      assigns(:smiles).should eq([smile])
    end


    it "renders the :index view" do
      get :index
      response.should render_template :index
    end

  end

  describe "GET #show" do
    it "assigns the requested contact to @contact"
    it "renders the :show template"
  end

  describe "GET #new" do
    it "assigns a new Contact to @contact"
    it "renders the :new template"
  end

  describe "POST #create" do
    context "with valid attributes" do
      it "creates a new smile"
    #     expect{
    #       post :create, smile: FactoryGirl.attributes_for(:smile)
    #     }.to change(Smile,:count).by(1)
    #   end
      it "redirects to index with a new smile"
    #   #   post :create, smile: Factory.attributes_for(:smile) response.should redirect_to Contact.last
    #   # end
    end
    context "with invalid attributes" do
      it "does not save the new contact in the database"
      it "re-renders the :new template"
    end
  end
end
