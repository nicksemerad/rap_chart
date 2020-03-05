class ArtistsController < ApplicationController
  before_action :set_chart
  before_action :set_artist, only: [:show, :edit, :update, :destroy]
  
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = @chart.artist.new
  end

  def create
    @artist = @chart.artists.new(artist_params)
    if @artist.save
      redirect_to [@chart, @artist]
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
    if @artist.update(artist_params)
      redirect_to [@chart, @artist]
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to root_path
  end

  private

  def set_chart
    @chart = Chart.find(params[:chart_id])
  end

  def artist_params
    params.require(:artist).permit(:name, :genre, :group)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end
end
