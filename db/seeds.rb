
artist1 =  Artist.create!(name: "Hailu Mergia", nationality: "Ethiopian", image: remote_image_url:"http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419645/Heilu_mergia_aps8r3.jpg")
artist2 =  Artist.create!(name: "Alexander Katenin", nationality: "Russian",  image: remote_image_url:"http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419626/alexanderkatenin_rsb1zv.jpg")
artist3 =  Artist.create!(name: "Ashla Bosle", nationality: "Dutch", image: remote_image_url: "http://res.cloudinary.com/djhc9jhiq/image/upload/v1510419618/Ashla_ud6bjd.jpg")

Song.create!([
  {name: "Tche Belew", duration: 5.12 , release: 1977, album: "Tsche blew", label: "Awesome tapes from Africa ", artist: artist1  },
  {name: "Yegle Nesh", duration: 3.18, release: 2014,  album: "",label: " Awesome tapes from Africa", artist: artist1 },
  {name: "All We Know", duration: 4.01 , release: 1985, album: "Monologue of thousand voices" ,label: "Melodiya", artist: artist2  },
  {name: "Udi baba", duration: 6.19 ,release: 1982, album: "Vidhata",label: "", artist: artist3 } ])
