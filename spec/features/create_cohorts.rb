# create_classes.rb
require 'spec_helper'
describe 'creating a cohort' do 

  it "creates a cohort" do 

    visit "/cohorts/new"
    # save_and_open_page
    fill_in 'cohort[location]', :with => "New York City"
    fill_in 'Month:', :with => 'January'
    fill_in 'Year:', :with => '2014'
    fill_in 'Nickname:', :with => '2014 Karaoke All-Stars'

    click_button 'Add Cohort'
    expect(page).to have_content 'New York City'
    expect(page).to have_content 'January, 2014'

  end

end