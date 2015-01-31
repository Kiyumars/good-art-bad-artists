class Crime < ActiveRecord::Base
	has_many :artists
	validates :charge, presence: true
end
