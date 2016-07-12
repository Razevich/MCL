class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|
      t.text     :title
      t.text     :description
      t.text     :img_url
      t.boolean  :favorite, default: false

      t.timestamps null: false
    end
  end
end
