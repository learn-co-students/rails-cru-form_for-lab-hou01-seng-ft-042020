class GenresController < ApplicationController
    def new
        @genre=Genre.new
    end 

    def create 
      @genre=Genre.new(genre_params) 
      @genre.save 
      redirect_to genre_path(@genre)
    end 

    def edit 
      @genre=current_genre
    end 

    def update
       @genre=current_genre
       @genre.update(genre_params)
       redirect_to genre_path(@genre)
    end 

    def show 
       @genre=current_genre 
    end 

    def current_genre 
        Genre.find(params[:id])
    end 

    private
    def genre_params 
        params.require(:genre).permit!
    end 
end
