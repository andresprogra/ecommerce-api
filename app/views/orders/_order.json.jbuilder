json.extract! order, :id, :status, :cart_id, :user_id, :street, :colonia, :num_ext, :num_int, :phone, :created_at, :updated_at
json.url order_url(order, format: :json)
