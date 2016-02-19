FactoryGirl.define do
  factory :platform do |p|
    p.sequence(:name) { |n| "Xbox One#{n}"}
  end
end