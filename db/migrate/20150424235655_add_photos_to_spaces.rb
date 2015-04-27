class AddPhotosToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :photos, :json
  end
end
