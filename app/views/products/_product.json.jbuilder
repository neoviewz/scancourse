json.extract! product, :id, :code, :url, :creator, :created_t, :created_datetime, :last_modified_t, :last_modified_datetime, :product_name, :generic_name, :quantity, :created_at, :updated_at
json.url product_url(product, format: :json)
