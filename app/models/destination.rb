class Destination < ActiveRecord::Base
	has_many :locations, dependent: :destroy
	has_many :accomodations, dependent: :destroy
	accepts_nested_attributes_for :locations, reject_if: :all_blank, allow_destroy: true
	accepts_nested_attributes_for :accomodations, reject_if: :all_blank, allow_destroy: true

	validates :name, presence: true
end
