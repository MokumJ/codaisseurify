require 'rails_helper'

RSpec.describe Artist, type: :model do

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
end
