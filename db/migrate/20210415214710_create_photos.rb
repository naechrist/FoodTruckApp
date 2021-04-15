class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :photo_title
      t.text :description
      t.date :taken_on
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.integer :food_truck_id

      t.timestamps
    end
  end
end
