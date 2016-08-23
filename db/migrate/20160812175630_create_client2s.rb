class CreateClient2s < ActiveRecord::Migration
  def change
    create_table :client2s do |t|
      t.string :name
      t.string :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
