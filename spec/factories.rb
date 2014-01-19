FactoryGirl.define do
  factory :technology do
    name "Java"
  end

  factory :project do
    title "Web Development"
    role "Software Developer"
    customer "Google"
    description "Web development"
    start_date 10.days.ago
    end_date 1.day.ago
    highlight false
  end

  factory :user do
    name     "John Doe"
    email    "john.doe@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end