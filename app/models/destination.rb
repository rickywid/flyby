class Destination < ActiveRecord::Base
	geocoded_by :name  # can also be an IP address
	after_validation :geocode  

	has_many :locations
	accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true
end
