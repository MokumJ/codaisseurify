class ArtistSerializer < ActiveModel::Serializer
  attributes :name, :nationality, :birthyear, :image, :created_at, :id
  has_many :songs
end
