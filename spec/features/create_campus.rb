require 'spec_helper'

describe 'creating a campus' do 
  
  it "should create a campus" do
    visit "campuses/new"

    fill_in 'campus[location]', with: "GA: New York City"
    
    click_button 'Submit'

    expect(page).to have_content("GA: New York City")

  end
end