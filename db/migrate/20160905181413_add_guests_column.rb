class AddGuestsColumn < ActiveRecord::Migration
  def change
    add_column :bookings, :guests, :integer, null: false, default: 1
  end
end
