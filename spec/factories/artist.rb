FactoryGirl.define do
  factory :artist do
    name              { Faker::Name }
    nationality       "Guatamalteca"
    birthyear        { Faker::Number }
    image             "image tag"


  end
end
