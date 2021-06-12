FactoryBot.define do
  factory :book do
    sequence(:title) { |n| "Book #{n}"}
    description { Faker::Lorem.paragraph }
  end
end
