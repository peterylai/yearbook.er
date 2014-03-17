require 'spec_helper'

describe "a user can sign up as a student" do
	let(:user) {FactoryGirl.create(:user)}

	it "signs up" do
		signup(user)
		expect(page).to have_content "Welcome"
	end

	def signup(user)
		visit "/signup"
		fill_in :user_first_name, with: user.first_name
		fill_in :user_last_name, with: user.last_name
		fill_in :user_email, with: user.email
		fill_in :user_password, with: user.password
		fill_in :user_password_confirmation, with: user.password_confirmation
		click_button "Sign up!"
	end

end