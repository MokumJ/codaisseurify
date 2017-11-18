class ArtistsController < ApplicationController

  def index
   @artists = Artist.all
   @artists = Artist.order(:name)
  end

  def show
   @artist = Artist.find(params[:id])
   @songs = @artist.songs
   @song = @artist.songs.build

  end

  def new
   @artist = Artist.new
  end

  def create
     @artist = Artist.new(artist_params[])
    if @artist.save!
    redirect_to @artist

    else
    render 'new'
    end
  end

  def destroy
    Artist.find(params[:id]).destroy
    redirect_to artists_path
  end

  def edit;
  end


  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
  def artist_params
      params.require(:artist).permit(
        :name, :picture, :nationality, :birthyear, :image
      )
    end
end
