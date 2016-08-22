class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references :film, index: true, foreign_key: true
      t.references :tv, index: true, foreign_key: true
      t.references :marketing, index: true, foreign_key: true
      # t.references :independent_Film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
