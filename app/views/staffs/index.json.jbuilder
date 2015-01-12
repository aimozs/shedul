json.array!(@staffs) do |staff|
  json.extract! staff, :id, :first_name, :last_name, :email, :user_id
  json.url staff_url(staff, format: :json)
end
