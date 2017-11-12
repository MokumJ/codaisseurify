class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy

  mount_uploader :image, ImageUploader

  #<-----------------validations------------------------->
  validates :name, presence: true
  validates :nationality, presence: true
  validates :birthyear, presence: true
  


end
