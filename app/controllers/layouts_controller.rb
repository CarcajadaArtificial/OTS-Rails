class LayoutsController < ApplicationController
  def solicitud
  end

  def index
    if current_user.AdminStatus == false
      redirect_to "/recibos/new"
    end
  end
end
