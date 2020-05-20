class GenresController < ApplicationController
    before_action :current_genre, only: [:show, :edit, :update, :destroy]

    def index
        @genres = Genre.all
    end

    def show

    end

    def new
        @genre = Genre.new
    end

    def create
        genre = Genre.create(genre_params)
        redirect_to genre_path(genre.id)
    end

    def edit

    end

    def update
        @genre.update(genre_params)
        redirect_to "/genres/#{@genre.id}"
    end

    private
    def genre_params
        params.require(:genre).permit(:name)
    end

    def current_genre
        @genre = Genre.find(params[:id])
    end
end
