FactoryGirl.define do
  factory :user do
    username 'foobar'
    email 'foobar@example.com'
    password 'foobar'
    password_confirmation 'foobar'

    after_create { |user| user.confirm! }
  end
end