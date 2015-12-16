class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :entry_id
      t.integer :rater_id
      t.integer :star_rating
      t.timestamps null: false
    end
  end
end
