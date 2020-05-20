class SongsController < ApplicationController
    before_action :current_song, only: [:show, :edit, :update, :destroy]

    def index
        @songs = Song.all
    end

    def show

    end

    def new
        @song = Song.new
        @artists = Artist.all
        @genres = Genre.all
    end

    def create
        song = Song.create(song_params)
        redirect_to song_path(song.id)
    end

    def edit

    end

    def update
        @song.update(song_params)
        redirect_to "/songs/#{@song.id}"
    end

    private
    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def current_song
        @song = Song.find(params[:id])
    end
end
