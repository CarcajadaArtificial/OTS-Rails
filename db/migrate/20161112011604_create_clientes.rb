class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :id_cliente
      t.string :nombreempresa_cliente
      t.string :nombreresponsable_cliente
      t.integer :tel_cliente
      t.string :email_cliente
      t.string :comisionista_cliente
      t.integer :porcentagecomisionista_cliente

      t.timestamps
    end
    add_index :clientes, :id_cliente
  end
end
