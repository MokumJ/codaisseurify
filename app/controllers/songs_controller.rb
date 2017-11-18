class SongsController < ApplicationController

  def index

    @songs = Songs.order(params[:sort] + ' ' + params[:direction])
  end
  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
    render status: 200, json: song
  end

  def create
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build(song_params)

      if  @song.save!
        render status: 200, json: song

    else
            render status: 422, json: {
            errors: song.errors
          }.to_json
      end
   end


  def destroy
   @artist = Artist.find(params[:artist_id])
   @song = @artist.songs.find(params[:id])
   @song.destroy
   render status: 200, json: {
       message: "Song successfully deleted"
     }.to_json
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
      .require(:song)
      .permit(
        :name, :duration, :release, :album, :label, :artist_id, :song_id
      )

  end
end
