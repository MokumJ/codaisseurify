require 'rails_helper'

RSpec.describe Artist, type: :model do
  #<-----------------------validation test----------------------->
  describe "validations" do
      it "is invalid without a name" do
        artist = Artist.new(name: "")
        artist.valid?
        expect(artist.errors).to have_key(:name)
      end

      it "is invalid without a nationality" do
        artist = Artist.new(nationality: "")
        artist.valid?
        expect(artist.errors).to have_key(:nationality)
      end
      it "is invalid without a birthyear" do
        artist = Artist.new(birthyear: nil)
        artist.valid?
        expect(artist.errors).to have_key(:birthyear)
    end
  end

  #<-----------------------association test----------------------->
  describe "association with song" do
    let(:artist) { create :artist }
    let(:song) { create :song, artist: artist }
    it "has many songs" do
      song1 = artist.songs.new(name: "kinshahsa")
      song2 = artist.songs.new(name: "challa")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)


    end
end
    it  "Artist should have many songs" do

      song = Artist.reflect_on_association(:songs)
      expect(song.macro).to eq(:has_many)
    end
end
