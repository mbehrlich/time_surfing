json.id user.id
json.username user.username
json.firstname user.firstname
json.lastname user.lastname
json.profile user.profile
json.birthdate user.birthdate
json.gender user.gender
json.description user.description
json.year user.site.start_date.year if user.site.start_date
json.site do
  json.id user.site.id
  json.address user.site.address
  json.city user.site.city
  json.lat user.site.lat
  json.lng user.site.lng
  json.start_date user.site.start_date
  json.end_date user.site.end_date
  json.max_guests user.site.max_guests
  json.preferred_gender user.site.preferred_gender
  json.kid_friendly user.site.kid_friendly
  json.pet_friendly user.site.pet_friendly
  json.description user.site.description
  json.accepting_guests user.site.accepting_guests
end
