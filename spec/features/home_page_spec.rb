
require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  #capybara testing to ensure the root page is the projects page
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end


