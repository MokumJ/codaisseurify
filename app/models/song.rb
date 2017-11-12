class Song < ApplicationRecord

  belongs_to :artist

  #<-----------------validations------------------------->
  validates :name, presence: true
  validates :duration, presence: true
end
