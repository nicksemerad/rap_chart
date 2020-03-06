class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]
  
  def index
    @songs = @artist.songs
  end

  def show
  end

  def new
    @artist = @chart.artists.new
  end

  def create
    @song = @artist.song.new(song_params)
    if @song.save
      redirect_to [@artist, @song]
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to [@artist, @song]
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to root_path
  end

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
  def set_song
    @song = Song.find(params[:id])
  end
  def song_params
    params.require(:song).permit(:name, :album, :length)
  end

end
