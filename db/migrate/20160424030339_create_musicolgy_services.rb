class CreateMusicolgyServices < ActiveRecord::Migration
  def change
    create_table :musicolgy_services do |t|

      t.timestamps null: false
    end
  end
end
