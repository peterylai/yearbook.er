FactoryGirl.define do 
  factory :user do 
    email { Faker::Internet.email }
    username { Faker::Internet.user_name }
    password "pizza"
    password_confirmation "pizza"
  end
end