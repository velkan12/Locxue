json.array!(@categoria) do |categorium|
  json.extract! categorium, :nombre_categoria
  json.url categorium_url(categorium, format: :json)
end
