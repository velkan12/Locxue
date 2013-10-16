json.array!(@permisos) do |permiso|
  json.extract! permiso, :codigo_permiso
  json.url permiso_url(permiso, format: :json)
end
