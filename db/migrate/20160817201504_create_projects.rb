class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :film, index: true
      t.references :tv, index: true
      t.references :marketing, index: true
      t.references :indie_film, index: true

      t.timestamps null: false
    end
  end
end
