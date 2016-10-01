class ChangeColumnsTvYearSeason < ActiveRecord::Migration
  def change
  	change_column :tvs, :year, :string
  	change_column :tvs, :season, :string
  end
end
