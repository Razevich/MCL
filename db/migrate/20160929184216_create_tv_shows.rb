class CreateTvShows < ActiveRecord::Migration
  def change
    create_table :tv_shows do |t|
      t.text     :title
      t.integer  :year
      t.integer  :season
      t.text     :description
      t.text     :network
      t.text     :img_url
      t.boolean  :favorite, default: false

      t.timestamps null: false
    end
  end
end

