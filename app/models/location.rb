class Location < ActiveRecord::Base
  geocoded_by :name  # can also be an IP address
  after_validation :geocode  
  
  belongs_to :destination
end
