class SongsController < ApplicationController
  def index
   @songs = current_artist.songs
  end

  def new
   @song = current_artist.songs.build
  end

  def create
     @song = current_artist.songs.build(song_params)
    if @song.save
    redirect_to @song, notice: "new song added"
    else
    render :new
    end
  end

  def destroy
    @song.destroy
    redirect_to artist_path
  end


  private

  def set_song
    @song = Song.find(params[:id])
  end
  def song_params
    params
      .require(:song)
      .permit(
        :name, :duration, :release, :album, :label, :artist_id
      )
    end
end
end
