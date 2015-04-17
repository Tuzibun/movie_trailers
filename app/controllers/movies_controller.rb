class MoviesController < ApplicationController
  
  
  def index
    @movies = Movie.all
  end
  
  def new
  end
  
  def result
  	search_term = params[:q]
  	query = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
  	@movie = Movie.new
  	@movie.save_details(query)
  	@actors = query["Actors"].split(",")

  end
  
  def create
  	movie = Movie.new(title: params[:title], year: params[:year], poster_url: params[:poster_url], plot: params[:plot])
  	movie.save
  	redirect_to(movies_path)
  end

  

end