json.id site.user.id
json.username site.user.username
json.firstname site.user.firstname
json.lastname site.user.lastname
json.profile site.user.profile
json.birthdate site.user.birthdate
json.gender site.user.gender
json.description site.user.description
json.year site.start_date.year if site.start_date
json.site do
  json.id site.id
  json.address site.address
  json.city site.city
  json.lat site.lat
  json.lng site.lng
  json.start_date site.start_date
  json.end_date site.end_date
  json.max_guests site.max_guests
  json.preferred_gender site.preferred_gender
  json.kid_friendly site.kid_friendly
  json.pet_friendly site.pet_friendly
  json.description site.description
  json.accepting_guests site.accepting_guests
end
