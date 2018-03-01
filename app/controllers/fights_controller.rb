class FightsController < ApplicationController
  def home
  end

  def new
  	@users = User.all
  	@fight = Fight.new
  end

  def create
  	@fight = Fight.new(fight_params)
  	
  	@fight.game
  end

  def show
  end

  def index
  end

  private


  def fight_params
  	params.require(:fight).permit(:looser, :winner, :player_1_weapon, :player_2_weapon)
  end
end
