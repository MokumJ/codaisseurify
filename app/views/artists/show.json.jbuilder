json.extract! @artist, :id, :name, :nationality, :birthyear,:created_at, :updated_at
json.array!(@songs) do |song|
json.extract! @song, :id, :name, :duration, :release, :album, :created_at, :updated_at
json.url artist_path( @artist, @song, format: :json)

end
