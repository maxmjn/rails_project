FactoryGirl.define do
  factory :user do
=begin #creating hard-coded single user
    name     "Michael Hartl"
    email    "michael@example.com"
    password "foobar"
    password_confirmation "foobar"
=end
	#create a sequence of users
	  sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}   
    password "foobar"
    password_confirmation "foobar"
    factory :admin do
      admin true
    end
  end
end