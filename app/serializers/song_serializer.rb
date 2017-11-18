class SongSerializer < ActiveModel::Serializer
  attributes :name, :duration, :release, :album, :label, :artist_id, :id
  belongs_to :artist
end
