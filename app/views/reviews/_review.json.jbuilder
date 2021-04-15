json.extract! review, :id, :stars, :title, :content, :food_truck_id, :created_at, :updated_at
json.url review_url(review, format: :json)
