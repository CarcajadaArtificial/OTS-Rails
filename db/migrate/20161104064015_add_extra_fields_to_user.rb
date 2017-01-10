class AddExtraFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :AdminStatus, :boolean, :default => false
  end
end
