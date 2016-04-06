json.array!(@mestres) do |mestre|
  json.extract! mestre, :id, :nome, :matricula, :celular, :email, :foto
  json.url mestre_url(mestre, format: :json)
end
