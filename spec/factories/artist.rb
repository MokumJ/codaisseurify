FactoryGirl.define do
  factory :artist do
    name              { Faker::Name }
    nationality       "Guatamalteca"
    birthyear         1999
    image             "image tag"


  end
end
