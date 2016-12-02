class Vehiculo < ApplicationRecord
  def calcula_litroscargados
    Recibo.where(:placas_recibo => placas_vehiculo).sum(:combustible_recibo)
  end

  def calcula_ahorro
    # a = arreglo de id's de los recibos con las placas_recibo iguales a placas_vehiculo
    a = Recibo.where(:placas_recibo => placas_vehiculo).order(:id)
    # i = contador que recorre el arreglo
    i = 0
    # ahorro = variable que regresa el método en la que se almacena la sumatoria de ahorros
    ahorro = 0

    while i < a.length - 1
      kmA = a[i].kmactual_recibo
      kmB = a[i+1].kmactual_recibo
      litros = a[i].combustible_recibo
      ahorro = ahorro + ((kmB - kmA)/rendimientohistorico_vehiculo)-litros
      i = i + 1
    end

    ahorro

  end

  def calcula_rendimiento
    kmactual = Recibo.where(:placas_recibo => placas_vehiculo).order(:created_at).last.kmactual_recibo
    kminicial = Recibo.where(:placas_recibo => placas_vehiculo).order(:created_at).first.kmactual_recibo
    litros = Recibo.where(:placas_recibo => placas_vehiculo).sum(:combustible_recibo)
    (kmactual - kminicial) / litros
  end


end
