class DiagnosesController < ApplicationController

  def index
    @diagnosis = Diagnosis.new
    @menu = Menu.new
    # @menu = Menu.find(params[:menu_id])
  end

end
