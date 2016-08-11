json.array!(@products) do |product|
  json.extract! product, :id, :nombre, :author_libro, :editorial_id, :genero_id, :cantidad, :proveedor_id, :descripcion, :precio, :marca_id, :imagen, :tipo
  json.url product_url(product, format: :json)
end
