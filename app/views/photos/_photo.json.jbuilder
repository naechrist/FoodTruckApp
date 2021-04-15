json.extract! photo, :id, :photo_title, :description, :taken_on, :image_file_name, :image_content_type, :image_file_size, :food_truck_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
