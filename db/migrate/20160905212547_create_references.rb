class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :author_id, null: false
      t.integer :subject_id, null: false
      t.boolean :recommended, null: false
      t.text :body, null: false
      t.timestamps null: false
    end
    add_index :references, :author_id
    add_index :references, :subject_id
  end
end
