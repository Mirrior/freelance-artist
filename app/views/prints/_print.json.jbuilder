json.extract! print, :id, :title, :description, :price, :in_stock, :image_url, :created_at, :updated_at
json.url print_url(print, format: :json)
