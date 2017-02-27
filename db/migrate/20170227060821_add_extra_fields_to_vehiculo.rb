class AddExtraFieldsToVehiculo < ActiveRecord::Migration[5.0]
  def change
    add_column :vehiculos, :tercero_vehiculo, :string
    add_column :vehiculos, :horas_vehiculo, :string
  end
end
