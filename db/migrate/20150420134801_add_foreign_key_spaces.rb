class AddForeignKeySpaces < ActiveRecord::Migration
  def change
    rename_column :spaces, :owner_id, :user_id
    add_index :spaces, :user_id
  end
end
