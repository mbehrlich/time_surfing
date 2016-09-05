json.id booking.id
json.site_id booking.site_id
json.guest_id booking.guest_id
json.start_date booking.start_date
json.end_date booking.end_date
json.user do
  json.id booking.guest.id
  json.firstname booking.guest.firstname
  json.lastname booking.guest.lastname
  json.year booking.guest.year
  json.profile booking.guest.profile
end
