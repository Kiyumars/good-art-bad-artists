class CrimesController < ApplicationController
	def new
		@game_id = params[:game_id]
	end
end
