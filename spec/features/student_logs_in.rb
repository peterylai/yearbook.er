require 'spec_helper'
describe "student logs in" do 

  let!(:student) { Student.create( {
    first_name: "Shawnn", 
    last_name: "C",
    email: "s@ex.co",
    password: "pizza",
    password_confirmation: "pizza"   
    })
  }

  it "logs in with student status" do 
    visit(root_path)
    click_link "Login, Old Friend..."

    fill_in "Email", with: student.email
    fill_in "Password", with: student.password
    click_button "Log in!"

    expect(page).to have_content("Profile Page")
  end

end