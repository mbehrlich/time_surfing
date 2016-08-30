**users**
  - id: integer: primary
  - user_name: string: not null, unique
  - first_name: string: not null
  - last_name: string: not null
  - profilePic: string
  - birthdate: date
  - gender: string: "M, F, or O"
  - description: text

  has_many :photos, :bookings, :references, :messages, :friendships
  has_one :site

**photos** BONUS
  - id: integer: primary
  - photoable_id: integer: not null
  - photoable_type: string: not null
  - url: string: not null

  Polymorphic
  belongs_to :user

**sites**
  - id: integer: primary
  - user_id: integer, not null
  - address: string, not null
  - city: string, not null
  - country: string, not null
  - start_date: date, not null
  - end_date: date, not null
  - max_guests: integer: not null, > 0
  - preferred_gender: "M, F, or A"
  - kid_friendly: boolean, default: false
  - pet_friendly: boolean, default: false
  - description: text

  has_many :guests
  belongs_to :user

**bookings**
  - id: integer: primary
  - guest_id: integer: not null
  - site_id: integer: not null
  - start_date: date: not null
  - end_date: date: not null

  belongs_to :site, :user

**references**
  - id: integer: primary
  - reviewer_id: integer: not null
  - reviewed_id: integer: not null
  - recommended: boolean: not null
  - body: text: not null

  belongs_to :reviewer, :reviewed

**friendships** BONUS
  - id: integer: primary
  - userA_id: integer: not null
  - userB_id: integer: not null
  - accepted: boolean, default: false

  belongs_to :userA, :userB

**messages** BONUS
  - id: integer: primary
  - author_id: integer: not null
  - recipient_id: integer: not null
  - body: text: not null

  belongs_to :recipient, author
