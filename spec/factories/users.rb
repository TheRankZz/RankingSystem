FactoryGirl.define do
  factory :user do |u|
    u.email 'Test@email.com'
    u.password 'passwort'
    u.password_confirmation 'passwort'
  end
end