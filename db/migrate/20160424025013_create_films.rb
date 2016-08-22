class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.text     :title
      t.integer  :year
      t.text     :description
      t.text     :img_url
      t.boolean  :favorite, default: false


      t.timestamps null: false
    end
  end
end

# rails generate model film title:string year:integer description:string img_url:string

# `rails generate scaffold film title:string year:integer description:string img_url:string favorite:boolean`
# film title:string year:integer description:string img_url:string