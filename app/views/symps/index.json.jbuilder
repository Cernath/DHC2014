json.array!(@symps) do |symp|
  json.extract! symp, :id, :maladie, :symp1, :symp2, :symp3, :symp4, :symp5
  json.url symp_url(symp, format: :json)
end
