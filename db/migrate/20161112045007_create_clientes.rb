class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string :credencial_cliente
      t.string :empresa_cliente
      t.string :responsable_cliente
      t.integer :telefono_cliente
      t.string :email_cliente
      t.string :comisionista_cliente
      t.float :porcentage_cliente

      t.timestamps
    end
    add_index :clientes, :credencial_cliente
  end
end
