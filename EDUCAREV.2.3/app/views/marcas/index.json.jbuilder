json.array!(@marcas) do |marca|
  json.extract! marca, :id, :marca_name
  json.url marca_url(marca, format: :json)
end
