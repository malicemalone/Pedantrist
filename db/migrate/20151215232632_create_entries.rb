class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :photo
      t.timestamps null: false
    end
  end
end
