class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  	  flash[:notice] = "Combattant crée :)"
  	  redirect_to @user
  	else
  	  render :new
  	end
  end

  def edit
  end

  def show
  	@user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :attack, :life)
  end
end
