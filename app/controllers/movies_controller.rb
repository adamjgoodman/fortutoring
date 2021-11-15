class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    movie = Movie.create(movie_params)
    if movie.save
      redirect_to root_path, notice: "Movie Created"
    else
      redirect_to new_movie_path, warning: "Title Required"
    end
  end

  def show
    @movie = Movie.find params[:id]
  end

  private

  def movie_params
    params.require(:movie).permit(:title)
  end

end
