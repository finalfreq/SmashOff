FactoryGirl.define do
  factory :user  do
    name 'jake rake'
    email 'rake123@mail.com'
    password 'password'
    password_confirmation 'password'

    factory :admin do
      admin true
    end
  end

  factory :duel  do
    name 'this is a duel'
    character_one_name 'test is a test test test'
    character_two_name 'test is a test test test'
    character_one_body 'test is a test test test'
    character_two_body 'test is a test test test'
  end

  factory :comment  do
    body 'built project using rails'
  end
end
