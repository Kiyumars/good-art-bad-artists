class CrimesController < ApplicationController
	def new
		crime = Crime.all.sample
		redirect_to edit_game_crime_path(params[:game_id], crime.id)
	end

	def edit
		false_leads_number = 2
		@crimes_list = (1..Crime.all.count).to_a
		@artists = Array.new

		@crime = Crime.find(params[:id]).charge

		artist = Crime.find(params[:id]).artists.sample
		@crimes_list.delete(artist.crime_id)
		@artists.push(artist)


		false_leads_number.times do
			random_crime = @crimes_list.sample
			artist = Crime.find(random_crime).artists.sample
			@crimes_list.delete(random_crime)
			@artists.push(artist)
		end
		@artists.shuffle
	end
end
