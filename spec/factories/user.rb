FactoryGirl.define do 
  factory :user do 
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.email }
    password "pizza"
    password_confirmation "pizza"
    github { Faker::Internet.http_url }
    linkedin { Faker::Internet.http_url }
    bio { Faker::Lorem.paragraph }
    website { Faker::Internet.http_url }
    employer { Faker::Company.name }
  end

  factory :admin, class: Admin, parent: :user do 
    type "Admin"
  end

  factory :student, class: Student, parent: :user do 
    type "Student"
  end
end
