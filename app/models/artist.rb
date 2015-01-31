class Artist < ActiveRecord::Base
	belongs_to :crime

	validates :name, 	presence: true
	validates :url, 	presence: true
	validates :image, presence: true
	# validates :crime, presence: true
	validates_numericality_of :crime_id, only_integer: true
end
