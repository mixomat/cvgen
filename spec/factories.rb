FactoryGirl.define do
  factory :technology do
    name "Java"
  end

  factory :user do
    name     "John Doe"
    email    "john.doe@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end