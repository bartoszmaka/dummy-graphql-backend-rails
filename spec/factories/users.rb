FactoryBot.define do
  factory :user do
    sequence(:email) { |x| "email#{x}@factory.com" }
    password { 'factory12' }
  end
end
