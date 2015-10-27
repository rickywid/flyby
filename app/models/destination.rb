class Destination < ActiveRecord::Base
	has_many :locations
	accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true
end
