require 'spec_helper'

describe Cohort do 

  it { should belong_to :campus }
  it { should validate_presence_of :month } 
  it { should validate_presence_of :year }

end
