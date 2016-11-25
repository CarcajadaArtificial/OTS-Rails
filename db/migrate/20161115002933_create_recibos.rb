class CreateRecibos < ActiveRecord::Migration[5.0]
  def change
    create_table :recibos do |t|
      t.integer :folio_recibo
      t.float   :kmanterior_recibo
      t.float   :kmactual_recibo,     null: false
      t.float   :combustible_recibo,  null: false
      t.float   :sobres_recibo,       null: false
      t.string  :placas_recibo,       null: false

      t.timestamps
    end
    add_index :recibos, :folio_recibo
  end
end
