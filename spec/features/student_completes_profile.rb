require 'spec_helper'

describe "a student user can complete their profile" do
	let(:user) {FactoryGirl.create(:user)}

	it "completes profile" do
		complete_profile(user)
		expect(page).to have_content "Profile Page"
	end

	def complete_profile(user)
		visit "/users/#{user.id}/edit"
		fill_in :user_github, with: user.github
		fill_in :user_linkedin, with: user.linkedin
		fill_in :user_bio, with: user.bio
		fill_in :user_website, with: user.website
		fill_in :user_employer, with: user.employer
		click_button "Update Profile"
	end
end