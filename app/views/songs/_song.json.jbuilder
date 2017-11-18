json.extract! song, :id, :name, :duration, :release, :album, :label, :artist_id, :created_at, :updated_at
json.url song_url(song, format: :json)
