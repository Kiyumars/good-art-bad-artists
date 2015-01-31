class GamesController < ApplicationController
  def new
  end

  def create
  	@game = Game.create(rounds: 0, correct_guesses: 0)
  	redirect_to new_game_crime_path(@game.id)
  end
end
