class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.text     :username
      t.text     :password

      t.timestamps null: false
    end
  end
end
