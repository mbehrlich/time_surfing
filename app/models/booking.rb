class Booking < ActiveRecord::Base

  validates :guest_id, :site_id, :start_date, :end_date, :guests, presence: true
  validate :number_of_guests
  validate :accepting_guests
  validate :correct_time

  belongs_to :site

  has_one :host,
    through: :site,
    source: :user

  belongs_to :guest,
    primary_key: :id,
    foreign_key: :guest_id,
    class_name: :User

  def accepting_guests
    unless self.site.accepting_guests
      errors.add(:site, " is not accepting guests")
    end
  end

  def number_of_guests
    unless (self.site.max_guests.nil? || self.site.max_guests.to_i >= self.guests.to_i) && self.guests.to_i > 0
      errors.add(:site, " does not accept that many guests")
    end
  end

  def correct_time
    unless self.site.start_date <= self.start_date && self.site.end_date >= self.end_date
      errors.add(:site, " is not accepting guests during those dates")
    end
  end

end
