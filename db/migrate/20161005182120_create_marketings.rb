class CreateMarketings < ActiveRecord::Migration
  def change
    create_table :marketings do |t|
      t.string     :title
      t.string     :year
      t.string     :distributor
      t.string     :description
      t.string     :img_url
      t.boolean    :favorite, default: false
    end
  end
end
