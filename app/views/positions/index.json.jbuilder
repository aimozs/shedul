json.array!(@positions) do |position|
  json.extract! position, :id, :name, :user_id
  json.url position_url(position, format: :json)
end
