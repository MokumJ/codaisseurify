class SongsController < ApplicationController


  def new
    @artist = Artist.find(params[:artist_id])
   @song = @artist.songs.build(params[:song])
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build(params[:song_id])

    @song.save!
    redirect_to @artist, notice: "Song added"

end

  def destroy
   @artist = Artist.find(params[:artist_id])
   @song = @artist.songs.find(params[:id])
   @song.destroy
   redirect_to @artist, :notice => "song Deleted"
  end


  private
  def set_artist
    @artist = Artist.find_by(params[:artist_id])
  end
  def set_song
    @song = Song.find(params[:id])
  end
  def song_params
    params
      .require(:song, :song_id)
      .permit(
        :name, :duration, :release, :album, :label, :artist_id, :song_id
      )

  end
end
