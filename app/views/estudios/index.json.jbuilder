json.array!(@studios) do |studio|
  json.extract! studio, :id, :nome, :endereco
  json.url studio_url(studio, format: :json)
end
