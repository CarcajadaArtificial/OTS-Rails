class Cliente < ApplicationRecord

  def calcula_ahorro
    # arrvehiculos = arreglo de todos los vehículos que son de un tal cliente
    arrvehiculos = Vehiculo.where(:credencialcliente_vehiculo => credencial_cliente).order(:id)
    # i = contador que recorre el arreglo arrvehiculos
    i = 0
    # ahorro = variable que regresa el método en la que se almacena la sumatoria de ahorros
    ahorro = 0

    while i < arrvehiculos.length
      vehiculo = arrvehiculos[i]

      # arrrecibos = arreglo de todos los recibos de un tal vehículo
      arrrecibos = Recibo.where(:placas_recibo => arrvehiculos[i].placas_vehiculo).order(:id)
      # j = contador que recorre el arreglo de arrrecibos
      j = 0

      while j < arrrecibos.length - 1
        kmA = arrrecibos[j].kmactual_recibo
        kmB = arrrecibos[j+1].kmactual_recibo
        litros = arrrecibos[j].combustible_recibo
        precio = arrrecibos[j].preciogas_recibo
        ahorro = ahorro + (((kmB - kmA)/arrvehiculos[i].rendimientohistorico_vehiculo)-litros)*precio
        j = j + 1
      end

      i = i + 1
    end

    ahorro
    @a = ahorro

  end

  def calcula_pComisionista
    part = (@a * 0.50) * (porcentage_cliente/100)
  end

  def calcula_pOTS
    part = (@a * 0.50) * (1-(porcentage_cliente/100))
  end

  def calcula_ahorro_filtrado
    # arrvehiculos = arreglo de todos los vehículos que son de un tal cliente
    arrvehiculos = Vehiculo.where(:credencialcliente_vehiculo => credencial_cliente).order(:id)
    # i = contador que recorre el arreglo arrvehiculos
    i = 0
    # ahorro = variable que regresa el método en la que se almacena la sumatoria de ahorros
    ahorro = 0

    while i < arrvehiculos.length
      vehiculo = arrvehiculos[i]

      # arrrecibos = arreglo de todos los recibos de un tal vehículo
      arrrecibos = Recibo.where(:placas_recibo => arrvehiculos[i].placas_vehiculo).where("created_at >= ? AND created_at < ?", Filtro.last.fechainicio_filtro.to_date, Filtro.last.fechafin_filtro.to_date).order(:id)
      # j = contador que recorre el arreglo de arrrecibos
      j = 0

      while j < arrrecibos.length - 1
        kmA = arrrecibos[j].kmactual_recibo
        kmB = arrrecibos[j+1].kmactual_recibo
        litros = arrrecibos[j].combustible_recibo
        precio = arrrecibos[j].preciogas_recibo
        ahorro = ahorro + (((kmB - kmA)/arrvehiculos[i].rendimientohistorico_vehiculo)-litros)*precio
        j = j + 1
      end

      i = i + 1
    end

    ahorro
    @b = ahorro

  end

  def calcula_pComisionista_filtrado
    part = (@b * 0.50) * (porcentage_cliente/100)
  end

  def calcula_pOTS_filtrado
    part = (@b * 0.50) * (1-(porcentage_cliente/100))
  end


  def calcula_terceros
    arrteceros = Vehiculo.where(:credencialcliente_vehiculo => credencial_cliente).order(:tercero_vehiculo)
    @t = arrteceros.uniq
  end

end
