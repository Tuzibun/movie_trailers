class AddActorsReftoMovies < ActiveRecord::Migration
  def change
  add_reference :movies, :actor, index: true
  end
end
