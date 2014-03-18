require 'spec_helper'
describe "admin logs in" do 

  let!(:admin) { Admin.create( {
    first_name: "Shawn", 
    last_name: "B",
    email: "s@b.co",
    password: "pizza",
    password_confirmation: "pizza"   
    })
  }

  it "logs in with admin status" do 
    visit(root_path)
    click_link "Login, Old Friend..."

    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_button "Log in!"

    expect(page).to have_content("Welcome to GA")
  end

end