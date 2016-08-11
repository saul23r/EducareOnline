json.extract! pedido, :id, :name, :address, :email, :pay_type, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)