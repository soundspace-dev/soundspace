class AddColumnsToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :photo2, :string
    add_column :spaces, :photo3, :string
    add_column :spaces, :photo4, :string
    add_column :spaces, :photo5, :string
  end
end
