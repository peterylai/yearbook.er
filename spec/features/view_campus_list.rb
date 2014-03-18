require 'spec_helper'
describe "visit the splash page" do 
  it "lists all the campuses" do 
    Campus.create({location: "NYC"})
    Campus.create({location: "DC"})

    visit("/")
    expect(page).to have_content("NYC")
    expect(page).to have_content("DC") 
  end
end