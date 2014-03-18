require 'spec_helper'
describe "visit the splash page" do 
let(:cohort) { FactoryGirl.create(:cohort) }
  it "lists all the campuses" do 


    visit("/")
    
    expect(page.find('li', :text => cohort.campus.location)).to have_content(cohort.month)
    expect(page.find('li', :text => cohort.campus.location)).to have_content(cohort.year)
  end
end