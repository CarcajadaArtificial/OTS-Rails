class AddExtraFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :Users, :AdminStatus, :boolean, default: false
  end
end
