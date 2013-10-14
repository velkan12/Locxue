json.array!(@acta) do |actum|
  json.extract! actum, :numero_acta, :fecha, :lugar, :desarrollo, :participantes, :cncluciones, :tareas
  json.url actum_url(actum, format: :json)
end
