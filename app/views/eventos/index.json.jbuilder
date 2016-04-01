json.array!(@eventos) do |evento|
  json.extract! evento, :id, :disciplina_id, :mestre_id, :studio_id, :data, :hora_inicial, :hora_final
  json.url evento_url(evento, format: :json)
end
