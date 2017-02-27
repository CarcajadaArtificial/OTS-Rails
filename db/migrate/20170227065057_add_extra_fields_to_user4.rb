class AddExtraFieldsToUser4 < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :credencialcliente_user, :string
  end
end
