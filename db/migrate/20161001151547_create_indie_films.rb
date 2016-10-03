class CreateIndieFilms < ActiveRecord::Migration
  def change
    create_table :indie_films do |t|
      t.string :title
      t.string :distributor
      t.string :year
      t.string :description
      t.string :img_url
      t.boolean :favorite

      t.timestamps null: false
    end
  end
end
