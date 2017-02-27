class AddExtraFieldsToRecibo < ActiveRecord::Migration[5.0]
  def change
    add_column :recibos, :tercero_recibo, :string
  end
end
