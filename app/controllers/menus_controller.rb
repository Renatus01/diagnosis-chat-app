class MenusController < ApplicationController

  # def index
  #   admin_user =  User.first 
  # end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:name,:user_id)
  end
end