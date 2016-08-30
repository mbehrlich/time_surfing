## HTML API
- GET "/" - loads root.html.erb

## JSON API

**users**

- POST "/api/users" - signup
- GET "/api/users/:id" - get user info
- GET "/api/locationsearch" - get users by location
- GET "/api/users/:id/friends" - get user friends
- GET "/api/membersearch" - get users by member search BONUS
- PATCH "/api/users/:id" - edit user info
- DELETE "/api/users/:id" - delete user

**sessions**
- POST "/api/session" - login
- DELETE "/api/session" - logout

**sites**
- POST "/api/sites" - create site
- GET "/api/sites/:user_id" - get site info
- PATCH "/api/sites/:user_id" - update site info
- DELETE "/api/sites/:user_id" - delete site

**bookings**
- POST - "/api/bookings/:user_id" - book site
- GET - "/api/bookings/:user_id" - get bookings
- DELETE - "/api/bookings/:user_id" - delete booking

**guests**
- GET - "/api/guests/:user_id" - get guests
- DELETE - "/api/guests/:user_id" - cancel guest

**friendships** BONUS
- GET "/api/friends/:user_id" - get friends
- POST "/api/friends/:userA_id" - request friendship
- PATCH "/api/friendship/:id" - accept friendship
- DELETE "/api/friendship/:id" - delete friendship

**messages** BONUS
- GET "/api/inbox/:user_id" - get messages
- GET "/api/messages/:id" - get message
- DELETE "/api/messages/:id" - delete message
- POST "/api/inbox/:user_id" send message
