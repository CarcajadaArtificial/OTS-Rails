class LayoutsController < ApplicationController
  def solicitud
  end

  def index
    if current_user.AdminStatus == false && current_user.rol_user == nil
      redirect_to "/recibos/new"
    elsif current_user.rol_user == "cliente" || current_user.rol_user == "tercero"
      redirect_to "/vehiculos"
    end
  end
end
