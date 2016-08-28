class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.text :title
      t.text :name
      t.text :bio
      t.string :img_url

      t.timestamps null: false
    end
  end
end
