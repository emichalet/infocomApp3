class UsersController < ApplicationController
  def index
  end

  def show
  	@user = User.find(params[:id])
  end

  def addsome_money
  	@user = User.find(params[:id])
  	@user.current_money = @user.current_money + 10
    @user.money_won = @user.money_won + 10
  	@user.save
    #User.order("RANDOM()").first
  	redirect_back fallback_location: root_path
  end

  def default_money
    @user = User.find(params[:id])
    @user.current_money = 0
    @user.money_won = 0
    @user.money_lost = 0
    @user.save
    #User.order("RANDOM()").first
    redirect_back fallback_location: root_path
  end

  def remove_money
    user_viewed = params[:user_viewed].to_f
    info_viewed = params[:current_attribute]
    viewed = Viewed.create(user_viewing_id: current_user.id, user_viewed_id: user_viewed, info_viewed: info_viewed)
    prix = params[:prix].to_f
  	current_user.current_money = current_user.current_money - prix
    current_user.money_lost = current_user.money_lost + prix
    current_user.save
  end
end
