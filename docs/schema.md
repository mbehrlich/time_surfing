**users**
  - id
  - user_name
  - first_name
  - last_name
  - profilePic
  - age
  - gender
  - description

  has_many :photos, :bookings, :references, :messages, :friendships
  has_one :site

**photos**
  -id
  -user_id
  -url

  belongs_to :user

**sites**
  -id
  -user_id
  -address
  -city
  -country
  -start_date
  -end_date
  -max_guests
  -preferred_gender
  -kid_friendly
  -pet_friendly
  -description

  has_many :guests
  belongs_to :user

**bookings**
  -id
  -guest_id
  -site_id
  -start_date
  -end_date

  belongs_to :site, :user

**references**
  -id
  -reviewer_id
  -reviewed_id
  -recommended
  -body

  belongs_to :reviewer, :reviewed

**friendships**
  -id
  -userA_id
  -userB_id
  -accepted

  belongs_to :userA, :userB

**messages**
  -id
  -author_id
  -recipient_id
  -body

  belongs_to :recipient, author
