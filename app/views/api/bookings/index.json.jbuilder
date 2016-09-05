json.bookings do
  json.array! @bookings, partial: "booking", as: :booking
end
json.guests do
  json.array! @guests, partial: "guestbooking", as: :booking
end
