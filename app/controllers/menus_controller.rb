class MenusController < ApplicationController

  def index
    @menu = Menu.new
    # admin_user =  User.first 
    # @menu = Menu.find(params[:menu_id])
  end

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

  def destroy
    menu = Menu.find(params[:id])
    menu.destroy
    redirect_to root_path
  end

  private

  def menu_params
    params.require(:menu).permit(:name, :user_id)
  end
end