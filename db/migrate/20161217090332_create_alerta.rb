class CreateAlerta < ActiveRecord::Migration[5.0]
  def change
    create_table :alerta do |t|
      t.string :titulo_alerta
      t.string :contenido_alerta
      t.boolean :leido_alerta
      t.string :emailuser_alerta

      t.timestamps
    end
  end
end
