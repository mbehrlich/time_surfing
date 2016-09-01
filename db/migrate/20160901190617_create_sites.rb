class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :user_id, null: false
      t.string :address
      t.float :lat
      t.float :lng
      t.date :start_date
      t.date :end_date
      t.integer :max_guests
      t.string :preferred_gender, limit: 1
      t.boolean :kid_friendly, default: false
      t.boolean :pet_friendly, default: false
      t.text :description
      t.boolean :accepting_guests, default: false
      t.timestamps null: false
    end
    add_index :sites, :user_id
    add_index :sites, :lat
    add_index :sites, :lng
    add_index :sites, :start_date
    add_index :sites, :end_date
  end
end
