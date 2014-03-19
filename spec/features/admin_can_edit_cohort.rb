require 'spec_helper'

  describe "Admin can edit cohort" do
    let!(:admin) { FactoryGirl.create(:admin) }
    let!(:cohort) { FactoryGirl.create(:cohort) }

    it "allows Admin to click edit buttons on the splash page" do

      visit root_path
      click_link "Login, Old Friend..."
      fill_in "Email", with: admin.email
      fill_in "Password", with: admin.password
      click_button "Log in!"
      expect(page).to have_content "Welcome to GA"
      expect(page).to have_content "Edit"
    end 
  end
