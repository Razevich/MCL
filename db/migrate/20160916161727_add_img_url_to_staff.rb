class AddImgUrlToStaff < ActiveRecord::Migration
  def change
    add_column :staffs, :img_url, :string
  end
end
