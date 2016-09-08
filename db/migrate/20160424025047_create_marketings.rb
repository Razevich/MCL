class CreateMarketings < ActiveRecord::Migration
  def change
    create_table :marketings do |t|
      t.integer  :project_id
      t.integer  :year
      t.text     :title
      t.text     :description
      t.text     :img_url
      t.boolean  :favorite, default: false

      t.timestamps null: false
    end
  end
end
