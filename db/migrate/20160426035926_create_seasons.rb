class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.integer :tv_id
      t.string  :title
      t.string  :img_url
      t.integer :year
      t.integer :eppisode_count

      t.timestamps null: false
    end
  end
end
