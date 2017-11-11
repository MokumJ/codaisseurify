class Artist < ApplicationRecord

  has_many :songs, dependent: :destroy
  has_one :photo
  mount_uploader :image, ImageUploader

end
