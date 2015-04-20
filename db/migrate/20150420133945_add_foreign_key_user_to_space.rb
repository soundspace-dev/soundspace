class AddForeignKeyUserToSpace < ActiveRecord::Migration
  def change
    add_column :spaces, :user_id, :string
    add_foreign_key :spaces, :users
  end
end
