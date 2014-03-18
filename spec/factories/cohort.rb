FactoryGirl.define do 
  factory :cohort do 
   month { Faker::Time.month }
   year { Faker::Time.date[0..3] }
   nickname { Faker::DizzleIpsum.word }
   association :campus
  end
end