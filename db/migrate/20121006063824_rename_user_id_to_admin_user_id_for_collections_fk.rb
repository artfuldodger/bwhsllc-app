class RenameUserIdToAdminUserIdForCollectionsFk < ActiveRecord::Migration
  def change
    rename_column :services, :admin_id, :admin_user_id
  end
end
