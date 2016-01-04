json.array!(@gasstations) do |gasstation|
  json.extract! gasstation, :id, :retailer_id
  json.url gasstation_url(gasstation, format: :json)
end
