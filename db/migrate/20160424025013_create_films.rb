class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.text     :title
      t.integer  :year
      t.text     :description
      t.text     :img_url


      t.timestamps null: false
    end
  end
end
