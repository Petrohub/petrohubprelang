json.array!(@tanks) do |tank|
  json.extract! tank, :id, :gasstation_id
  json.url tank_url(tank, format: :json)
end
