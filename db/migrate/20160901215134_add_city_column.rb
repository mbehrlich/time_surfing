class AddCityColumn < ActiveRecord::Migration
  def change
    add_column :sites, :city, :string
  end
end
