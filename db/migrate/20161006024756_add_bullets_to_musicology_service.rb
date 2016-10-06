class AddBulletsToMusicologyService < ActiveRecord::Migration
  def change
    add_column :musicology_services, :bullets, :text
  end
end
