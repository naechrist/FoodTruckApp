class CreateFoodTrucks < ActiveRecord::Migration[6.0]
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.text :location
      t.text :menu
      t.integer :price
      t.integer :user_id

      t.timestamps
    end
  end
end
