require 'factory_girl'

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :tutorial do
    name "life"
    description "this goes into how you figure life out"
    problem "what is the meaning of life?"
    solution 42
    completed
    difficulty "easy"
  end
end
