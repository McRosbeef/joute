class FightsController < ApplicationController
  def home
  end

  def new
  	@users = User.all
  	@fight = Fight.new
    @fights = Fight.all
  end

  def create
  	@fight = Fight.new

		@fight.player_1 =  User.find_by(id: fight_params[:player_1])
		@fight.player_2 =  User.find_by(id: fight_params[:player_2])
		@fight.player_1_weapon_id =  fight_params[:player_1_weapon_id]
		@fight.player_2_weapon_id =  fight_params[:player_2_weapon_id]
  	
  	@fight.game

  	if @fight.save!
  		flash[:notice] = "Le combat a eu lieu"
  		redirect_to @fight
  	else
  		render :new
  	end
  end

  def show
  	@fight = Fight.find_by(id: params[:id])
  	@winner = User.find_by(id: @fight.winner_id)
  	@looser = User.find_by(id: @fight.looser_id)
  end

  def index
    @fights = Fight.all
  end

  private


  def fight_params
  	params.require(:fight).permit(:player_1, :player_2, :player_1_weapon_id, :player_2_weapon_id)
  end
end
