json.array!(@generos) do |genero|
  json.extract! genero, :id, :genero_name
  json.url genero_url(genero, format: :json)
end
