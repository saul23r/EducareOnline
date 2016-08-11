json.extract! entrada, :id, :producto_id, :descripcion, :existencia, :precio_compra, :precio_venta, :proveedor_id, :created_at, :updated_at
json.url entrada_url(entrada, format: :json)