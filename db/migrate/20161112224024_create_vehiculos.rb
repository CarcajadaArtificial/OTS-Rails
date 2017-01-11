class CreateVehiculos < ActiveRecord::Migration[5.0]
  def change
    create_table :vehiculos do |t|
      t.string  :placas_vehiculo,               null: false
      t.string  :marca_vehiculo,                null: false
      t.string  :modelo_vehiculo,               null: false
      t.string  :ano_vehiculo,                  null: false
      t.float   :rendimientohistorico_vehiculo, null: false
      t.string  :operador_vehiculo,             null: false
      t.string  :credencialcliente_vehiculo,    null: false

      t.timestamps
    end
    add_index :vehiculos, :placas_vehiculo, :unique => true
  end
end
