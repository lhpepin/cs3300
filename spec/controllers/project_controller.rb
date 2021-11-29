require "rails_helper"

RSpec.describe ProjectsController, type: :controller do



  #testing the root page returns sucessfully
  context "GET #index" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(:user)
    end

    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  #testing to ensure project pages return sucessfully
  context "GET #show" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(:user)
    end

    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_successful
    end
  end
end

