class Location < ActiveRecord::Base
	geocoded_by :full_address  # can also be an IP address
	after_validation :geocode  

	belongs_to :destination

	def full_address
		"#{address}, #{name}"
	end

	validates :name,:address,:date, presence: true

end
