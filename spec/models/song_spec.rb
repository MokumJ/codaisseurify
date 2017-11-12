require 'rails_helper'

RSpec.describe Song, type: :model do

      describe "validations" do
        it "is invalid without a name" do
          artist = Song.new(name: "")
          artist.valid?
          expect(artist.errors).to have_key(:name)
        end

        it "is invalid without a duration" do
          artist = Song.new(duration: nil)
          artist.valid?
          expect(artist.errors).to have_key(:duration)
        end
    
    end
end
