json.array!(@procesos) do |proceso|
  json.extract! proceso, :nombre_proceso
  json.url proceso_url(proceso, format: :json)
end
