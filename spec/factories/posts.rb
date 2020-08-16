FactoryBot.define do
  
  factory :post do
    text {"aaaaaa"}
    image {"aaaaaa.png"}
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
    user
  end

end