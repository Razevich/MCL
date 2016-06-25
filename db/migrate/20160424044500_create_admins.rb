class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.text     :username
      t.text     :password
      t.text     :secret_code

      t.timestamps null: false
    end
  end
end
