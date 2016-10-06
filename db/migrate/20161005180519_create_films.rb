class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
    	t.string :title
      t.string :distributor
      t.string :year
      t.string :description
      t.string :img_url
      t.boolean :favorite, default: false
      
    end
  end
end
