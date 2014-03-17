# create_classes.rb
require 'spec_helper'
describe 'creating a cohort' do 

  it "creates a cohort" do 

    visit "/cohorts/new"
    # save_and_open_page
    fill_in 'cohort[location]', :with => "New York City"
    fill_in 'cohort[month]', :with => 'January'
    fill_in 'cohort[year]', :with => '2014'
    fill_in 'cohort[nickname]', :with => '2014 Karaoke All-Stars'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'New York City'
    expect(page).to have_content 'January, 2014'

  end

end