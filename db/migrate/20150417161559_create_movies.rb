class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.string :poster_url
      t.text :plot
      # t.references :actor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
