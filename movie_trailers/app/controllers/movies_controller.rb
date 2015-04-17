class MoviesController < ApplicationController
  
  
  def index
    @movies = Movie.all
  end
  
  def new
  end
  
  def show
    @movie = Movie.find()
  end
  
  def create
  	search_term = params[:q]
  	@query = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
  	render 'movies/show'
  end
  
end