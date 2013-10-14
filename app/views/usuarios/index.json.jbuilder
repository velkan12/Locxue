json.array!(@usuarios) do |usuario|
  json.extract! usuario, :nombre, :apellido, :apellido2, :perfil, :correo, :twitter, :nickname, :pass
  json.url usuario_url(usuario, format: :json)
end
