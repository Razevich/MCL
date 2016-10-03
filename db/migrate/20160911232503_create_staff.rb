class CreateStaff < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
        t.text   :name
        t.text   :title
        t.text   :bio
        t.text   :img_url
    end
  end
end
