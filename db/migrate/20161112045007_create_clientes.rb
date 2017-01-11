class CreateClientes < ActiveRecord::Migration[5.0]
  def change
    create_table :clientes do |t|
      t.string  :credencial_cliente,    null: false
      t.string  :empresa_cliente,       null: false
      t.string  :responsable_cliente,   null: false
      t.bigint  :telefono_cliente,      null: false
      t.string  :email_cliente,         null: false
      t.string  :comisionista_cliente,  null: false
      t.float   :porcentage_cliente,    null: false

      t.timestamps
    end
    add_index :clientes, :credencial_cliente, :unique => true
  end
end
