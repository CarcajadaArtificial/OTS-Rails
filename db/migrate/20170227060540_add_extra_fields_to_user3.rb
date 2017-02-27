class AddExtraFieldsToUser3 < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :rol_user, :string
  end
end
