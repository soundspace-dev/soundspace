json.array!(@bookings) do |booking|
  json.extract! booking, :id, :space_id, :checkin, :checkout, :confirm_date, :confirm_by, :pay_date, :pay_type, :status, :active
  json.url booking_url(booking, format: :json)
end
