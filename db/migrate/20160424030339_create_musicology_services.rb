class CreateMusicologyServices < ActiveRecord::Migration
  def change
    create_table :musicology_services do |t|
      t.text     :bio

      t.timestamps null: false
    end
  end
end
