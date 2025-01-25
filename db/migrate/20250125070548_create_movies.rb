class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.float :rating

      t.timestamps

      t.index :title, unique: true
    end
  end
end
