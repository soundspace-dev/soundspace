json.array!(@spaces) do |space|
  json.extract! space, :id, :name, :user_id, :features, :description, :equipment, :rate_hourly, :rate_halfday, :rate_daily, :rate_weekly, :address, :city, :state, :active, :calendar_id
  json.url space_url(space, format: :json)
end
