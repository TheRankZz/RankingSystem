FactoryGirl.define do
  factory :genre do |g|
    g.sequence(:name) { |n| "Action#{n}"}
    end
end
