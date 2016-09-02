class Site < ActiveRecord::Base

  validates :user_id, presence: true
  validates :preferred_gender, inclusion: { in: ["M", "F", "N", "", nil]}

  belongs_to :user

end
