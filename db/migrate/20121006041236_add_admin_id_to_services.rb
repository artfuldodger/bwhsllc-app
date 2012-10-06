class AddAdminIdToServices < ActiveRecord::Migration
  def change
    add_column :services, :admin_id, :integer
  end
end
