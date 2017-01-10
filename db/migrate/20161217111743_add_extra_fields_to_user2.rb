class AddExtraFieldsToUser2 < ActiveRecord::Migration[5.0]
  def change
        add_column :users, :nombre_user, :string
        add_column :users, :telefono_user, :string
        add_column :users, :estado_user, :string
        add_column :users, :ciudad_user, :string
  end
end
