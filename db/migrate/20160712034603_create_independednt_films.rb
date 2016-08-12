class CreateIndependedntFilms < ActiveRecord::Migration
  def change
    create_table :independednt_films do |t|
      t.text     :title
      t.integer  :year
      t.text     :description
      t.text     :img_url
      t.boolean  :favorite, default: false

      t.timestamps null: false
    end
  end
end