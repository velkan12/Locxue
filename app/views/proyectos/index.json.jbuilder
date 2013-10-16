json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :titulo, :descripcion, :etapa
  json.url proyecto_url(proyecto, format: :json)
end
