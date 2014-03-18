FactoryGirl.define do 
  factory :campus do 
   location { Faker::Address.city }
  end
end