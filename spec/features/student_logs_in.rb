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
    login(student)
    expect(page).to have_content("Profile Page")
  end

  it "logs a student out" do
    login(student)
    expect(page).to have_content("Profile Page")

    click_link "Log Out " + student.first_name + "!"
    expect(page).to have_content("Login, Old Friend...")    
  end
end

def login(user)
  visit(root_path)
  click_link "Login, Old Friend..."

  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Log in!"
end