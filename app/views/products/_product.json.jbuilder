json.extract! product, :id, :name, :to_price, :description, :photo, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)
