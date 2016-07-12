class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer  :year
      t.text     :title
      t.text     :description
      t.text     :img_url

      t.timestamps null: false
    end
  end
end
