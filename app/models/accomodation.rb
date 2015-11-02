class Accomodation < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode          # auto-fetch coordinates
	belongs_to :destination

	validates :name,:address, presence: true

end
