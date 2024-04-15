# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
    password { 'password123' }
    password_confirmation { 'password123' }
  end
end

FactoryBot.define do
  factory :conversation do
    association :sender, factory: :user
    association :receiver, factory: :user
  end
end

FactoryBot.define do
  factory :message do
    association :conversation, factory: :conversation
    association :sender, factory: :user
    association :receiver, factory: :user
    content { Faker::Lorem.paragraph }
  end
end
