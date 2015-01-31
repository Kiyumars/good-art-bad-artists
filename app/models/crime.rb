class Crime < ActiveRecord::Base
	validates :charge, presence: true
end
