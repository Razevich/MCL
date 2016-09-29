class CreateStaff < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
        t.text   :name
        t.text   :title
        t.text   :bio
    end
  end
end
