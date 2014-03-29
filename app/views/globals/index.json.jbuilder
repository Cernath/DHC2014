json.array!(@globals) do |global|
  json.extract! global, :id, :ville, :departement, :region, :pays, :date, :maladie
  json.url global_url(global, format: :json)
end
