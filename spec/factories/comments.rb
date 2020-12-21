FactoryBot.define do
  factory :comment do
    user_id { "Miho" } 
    sequence(:body) { |n| "comment body #{n}" }
  end
end