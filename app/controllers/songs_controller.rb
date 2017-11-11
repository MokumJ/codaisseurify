class SongsController < ApplicationController
  def index
   @songs = current_artist.songs
  end

  def new
   @song = current_artist.songs.build
  end

  def create
    @song = current_artist.song.new(song_params)
    @song.artist_id = params[:artist_id]
    @song.save!

    redirect_to artist_path, notice: "Song added"
    else
    render :new

  end

  def destroy
    @artist = Artist.find(params[:artist_id])
   @song = @artist.songs.find(params[:id])
   @song.destroy
   redirect_to @artist, :notice => "song Deleted"
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
