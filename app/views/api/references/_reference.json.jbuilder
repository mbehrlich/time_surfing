json.id reference.id
json.recommended reference.recommended
json.body reference.body
json.created_at reference.created_at
json.author do
  json.id reference.author.id
  json.firstname reference.author.firstname
  json.lastname reference.author.lastname
  json.profile reference.author.profile
end
