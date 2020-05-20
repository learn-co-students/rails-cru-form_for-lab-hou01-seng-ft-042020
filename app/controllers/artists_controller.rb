class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def current_artist
    @artist = Artist.find(params[:id])
  end

  def show
    @artist = current_artist
  end

  def new
    @artist = Artist.new
  end

  def create
    # byebug
    @artist = Artist.create(artist_params)

    redirect_to artist_path(@artist)
  end

  def edit
    @artist = current_artist
  end

  def update
    @artist = current_artist
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  private

		def artist_params
			params.require(:artist).permit(:name, :bio)
		end
end
