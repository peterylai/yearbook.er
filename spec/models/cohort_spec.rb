require 'spec_helper'

describe Cohort do 

  it { should validate_presence_of :location }
  it { should validate_presence_of :month } 
  it { should validate_presence_of :year }

end
