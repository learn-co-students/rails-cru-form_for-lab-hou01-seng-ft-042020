class SongsController < ApplicationController
    def index 
        @songs=Song.all 
    end 

    def new 
        @song=Song.new 
    end 

    def edit 
        @song=current_song 
    end 

    def create 
        @song=Song.new(song_params)
        @song.save 
        redirect_to song_path(@song)
    end 

    def update
        @song=current_song 
        @song.update(song_params)
        redirect_to song_path(@song)
    end 

    def show 
        @song=current_song 
    end 
    
    def current_song
        Song.find(params[:id])
    end 

    private
    def song_params
        params.require(:song).permit!
    end 
end
