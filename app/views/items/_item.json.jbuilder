json.extract! item, :id, :title, :price, :active, :created_at, :updated_at
json.url item_url(item, format: :json)
