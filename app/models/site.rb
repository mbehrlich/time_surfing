class Site < ActiveRecord::Base

  validates :user_id, presence: true
  validates :preferred_gender, inclusion: { in: ["M", "F", "N", "", nil]}

  belongs_to :user

  def self.in_bounds(bounds, dates)
    #{"northEast"=>{"lat"=>"", lng=>""}, "southWest"=>{}}

    from = Date.iso8601(dates["from"])
    to = Date.iso8601(dates["to"])


    Site.where("lat < ? AND lng < ? AND lat > ? AND lng > ? AND ((start_date > ? AND start_date < ?) OR (end_date > ? AND end_date < ?) OR (start_date <= ? AND end_date >= ?))",
    bounds["northEast"]["lat"],
    bounds["northEast"]["lng"],
    bounds["southWest"]["lat"],
    bounds["southWest"]["lng"],
    from, to, from, to, from, from)

  end

end
