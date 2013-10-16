json.array!(@rols) do |rol|
  json.extract! rol, :nombre_rol
  json.url rol_url(rol, format: :json)
end
