

Artist.destroy_all
Song.destroy_all

#dates
d1 = DateTime.new(1977)
d2 = DateTime.new(2014)
d3 = DateTime.new(1985)
d4 = DateTime.new(1988)
d5 = DateTime.new(1982)
d6 = DateTime.new(1956)
#artists
artist1 =  Artist.create!(name: "Hailu Mergia", nationality: "Ethiopian", birthyear: 1950, remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419645/Heilu_mergia_aps8r3.jpg"  )
artist2 =  Artist.create!(name: "Alexander Katenin", nationality: "Russian", birthyear: 1950, remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419626/alexanderkatenin_rsb1zv.jpg")
artist3 =  Artist.create!(name: "Ashla Bosle", nationality: "Indian", birthyear: 1950, remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419618/Ashla_ud6bjd.jpg")
artist4 =  Artist.create!(name: "Velly Joonas", nationality: "Estonian", birthyear: 1959, remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510509392/Velly-Joonas-Stopp-Seisku-Aeg_su35ju.jpg")
  Song.create!([
    {name: "Tche Belew", duration: 5.12 , release: d1, album: "Tsche blew", label: "Awesome tapes from Africa ", artist: artist1 },
    {name: "Yegle Nesh", duration: 3.18, release: d2,  album: "", label: " Awesome tapes from Africa", artist: artist1 },
    {name: "All We Know", duration: 4.01 , release: d3, album: "Monologue of thousand voices" ,label: "Melodiya", artist: artist2}  ,
    {name: "Udi baba", duration: 6.19 , release: d4, album: "Vidhata", label: "", artist: artist3 },
    {name: "Stopp Seisku Aeg!", duration: 4.23 , release: d5, album: "Stopp Seisku Aeg", label: "Frotee", artist: artist4 },
    {name: "Kar Gaya Re", duration: 3.22 , release: d6, album: "Basant Bahar",label: "", artist: artist3 },
    {name: "Käes On Aeg", duration: 2.53 , release: d5, album: "Stopp Seisku Aeg",label: "Frotee", artist: artist4 }])

# Photos
#photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419645/Heilu_mergia_aps8r3.jpg", artist: artist1)
#photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419626/alexanderkatenin_rsb1zv.jpg", artist: artist2)
#photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419618/Ashla_ud6bjd.jpg", artist: artist3)
