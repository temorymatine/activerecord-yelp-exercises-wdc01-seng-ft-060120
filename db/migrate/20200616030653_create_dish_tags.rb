class CreateDishTags < ActiveRecord::Migration[5.2]
  def change
    create_table :dishtags do |t|
      t.string :name
      t.integer :dish_id
      t.integer :tag_id
    end
  end
end