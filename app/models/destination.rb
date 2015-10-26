class Destination < ActiveRecord::Base
	geocoded_by :name  # can also be an IP address
	after_validation :geocode  
end
