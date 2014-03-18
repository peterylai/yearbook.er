FactoryGirl.define do 
  factory :cohort do 
   month { Faker::Time.month }
   year { Faker::Time.year }
   nickname { Faker::DizzleIpsum.word }
   association :campus
  end
end