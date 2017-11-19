class SongsController < ApplicationController
before_action :set_song, only: [:show, :edit, :update, :destroy]
  def index
    @artist = Artist.find(params[:artist_id])
    @songs = @artist.songs
    @song = @artist.song.new
    render status: 200, json: song
  end
  def new
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build
    render status: 200, json: song
  end

  def create
    binding.pry
    @artist = Artist.find(params[:artist_id])
    @song = @artist.songs.build(song_params)

      if  @song.save!
        respond_to do |format|
        format.html { redirect_to artist_path(@artist) }
        format.json { render :show, status: :created, location: @artist }

    end
    else
      format.html { redirect_to @artist }
      format.json { render json: @songs.errors, status: :unprocessable_entity }
      end
   end


  def destroy
   @artist = Artist.find(params[:artist_id])
   @song = @artist.songs.find(params[:id])
   @song.destroy
     respond_to do |format|
     format.html { redirect_to artist_path(@artist) }
     format.json { render :show, status: :deleted, location: @artist }

   end
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
