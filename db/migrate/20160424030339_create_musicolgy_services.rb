class CreateMusicolgyServices < ActiveRecord::Migration
  def change
    create_table :musicolgy_services do |t|
      t.text     :bio

      t.timestamps null: false
    end
  end
end
