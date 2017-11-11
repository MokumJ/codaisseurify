class ArtistsController < ApplicationController

  def index
   @Artists = Artist.all
  end

  def show
   @Artist = Artist.find(params[:id])
   @songs = @artist.songs
  end

  def new
   @artist = @artists.build
  end

  def create
     @artist = @artists.build
     if @artist.save
    redirect_to @artist
    else
    render 'new'
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  def edit;
  end

  def update

    if @artist.update(artist_params)
      redirect_to @artist
    else
      render 'edit'
    end
  end
  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
  def artist_params
    params
      .require(:artist)
      .permit(
        :name, :picture, :nationality, :birthyear
      )
    end
end
