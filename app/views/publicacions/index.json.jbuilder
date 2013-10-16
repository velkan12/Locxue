json.array!(@publicacions) do |publicacion|
  json.extract! publicacion, :titulo_publicacion, :descripcion_publicacion, :fecha_publicacion, :codigo_usuario, :codigo_categoria
  json.url publicacion_url(publicacion, format: :json)
end
