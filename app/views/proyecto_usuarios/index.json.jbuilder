json.array!(@proyecto_usuarios) do |proyecto_usuario|
  json.extract! proyecto_usuario, :usuario_id, :proyecto_id
  json.url proyecto_usuario_url(proyecto_usuario, format: :json)
end
