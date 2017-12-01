class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def addsome_money
  	@user = User.find(params[:id])
  	@user.current_money = @user.current_money + 10
  	@user.save
  	redirect_to show_path
  end

  def remove_money
  	current_user.current_money = current_user.current_money - 10
  	current_user.save
  end
end
