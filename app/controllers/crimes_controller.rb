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

	def update
		@selected_artist_id = params[:artist_id]
		@crime_of_selected_artist = Artist.find(@selected_artist_id).crime.id
		@correct_crime_id = params[:id]

		if @crime_of_selected_artist.to_s == @correct_crime_id
			@answer = "Correct!"
			@crime_link = Artist.find(@selected_artist_id).url
		else
			@answer = "Wrong!"
		end

		# if Artist.find(selected_artist_id).crime.to_s  == params[:id]
		# 	@answer = "Correct!"

		# else
		# 	@answer = "Wrong!"
		# end
				# if Crime.find(selected_artist_id).crime == params[:id].to_i
		# 	@answer = "Correct!"
		# else
		# 	@answer = "Wrong!"
		# end
	end

end
