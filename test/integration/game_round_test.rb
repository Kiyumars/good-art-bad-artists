require 'test_helper'

class GameRoundTest < ActionDispatch::IntegrationTest
  test "play one round" do
  	get new_game_path
  	assert_response :success
  	assert_difference 'Game.count', 1 do
  		post games_path
  	end
  	follow_redirect!
  	assert_template 'edit'
    assert_select "form input"
  end
end
