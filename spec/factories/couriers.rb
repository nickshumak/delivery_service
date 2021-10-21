# frozen_string_literal: true

FactoryBot.define do
  factory :courier do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    trait :real do
      email { 'test@test.test' }
      password { 'password' }
    end
    trait :images do
      email { 'test1@test.test' }
      password { 'password' }
      images { File.new(Rails.root.join('spec/support/fixtures/avatar.jpg')) }
    end
  end
end
