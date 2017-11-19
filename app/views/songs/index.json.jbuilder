json.extract! @artist, :id, :name, :nationality, :birthyear,:created_a, :updated_at
json.array!(@songs) do |song|
json.extract! @song, :id, :name, :duration, :release, :album, :created_at, :updated_at
json.url artists_artist(params[:id])_url(@songs, format: :json)
end
