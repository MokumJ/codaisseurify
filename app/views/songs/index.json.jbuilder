json.array!(@songs) do |song|
  json.extract! @song, :id, :name, :duration, :release, :album, :created_at, :updated_at

end
