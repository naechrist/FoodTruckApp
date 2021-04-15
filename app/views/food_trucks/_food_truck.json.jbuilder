json.extract! food_truck, :id, :name, :location, :menu, :price, :created_at, :updated_at
json.url food_truck_url(food_truck, format: :json)
