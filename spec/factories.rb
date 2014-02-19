FactoryGirl.define do
  factory :user do
    username 'foobar'
    email 'foobar@example.com'
    password 'foobarbaz'
    password_confirmation 'foobarbaz'

    after(:create) { |user| user.confirm! }
  end
end