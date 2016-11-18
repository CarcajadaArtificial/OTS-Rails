class CreateVehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :vehiculos do |t|
      t.string :placas_vehiculo
      t.string :marca_vehiculo
      t.string :modelo_vehiculo
      t.string :ano_vehiculo
      t.float :rendimientohistorico_vehiculo
      t.string :operador_vehiculo
      t.string :credencialcliente_vehiculo

      t.timestamps
    end
    add_index :vehiculos, :placas_vehiculo
  end
end
