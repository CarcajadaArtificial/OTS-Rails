class ClienteController < ApplicationController
  def new_params
    @new_cliente = Cliente.new
    params.require(:cliente).permit(:id_cliente, :nombreempresa_cliente, :nombreresponsable_cliente, :tel_cliente, :email_cliente, :comisionista_cliente, :porcentagecomisionista_cliente)
  end
  def reporte
  end
end
