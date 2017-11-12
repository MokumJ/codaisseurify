FactoryGirl.define do
  factory :song do
    name              "bishmala"
    duration          4.10
    release           {Faker::Date}
    album             "collage"
    label             "records"


  end
end
