class AddMoviesReftoActor < ActiveRecord::Migration
  def change
  	add_reference :actors, :movie, index: true
  end
end
