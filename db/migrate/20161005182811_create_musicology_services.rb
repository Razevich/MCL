class CreateMusicologyServices < ActiveRecord::Migration
  def change
    create_table :musicology_services do |t|
    		t.text   :description
        t.text   :name
        t.text   :title
        t.text   :bio
        t.text   :img_url
    end
  end
end
