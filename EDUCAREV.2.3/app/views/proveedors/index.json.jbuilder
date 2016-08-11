json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :nombre, :direccion, :telefono, :email
  json.url proveedor_url(proveedor, format: :json)
end
