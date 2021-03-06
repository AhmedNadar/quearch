# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
    sequence(:email) { |n| "someone#{n}@example.com" }
    
    factory :user do
      email
	  password 'password'
	  password_confirmation { |u| u.password }
  end
end