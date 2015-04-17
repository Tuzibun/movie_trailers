class ActorsController < ApplicationController
  
  
  def index
    @actor = Actor.all
  end
  

  
  def new
  end
  
  def show
    @actor = Actor.find()
  end
  
  def create
  end
  
end