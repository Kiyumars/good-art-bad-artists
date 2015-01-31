class Crime < ActiveRecord::Base
	validates :charge, presence: true
	validates_numericality_of :charge, only_integer: true
end
