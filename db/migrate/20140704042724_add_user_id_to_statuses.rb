class AddUserIdToStatuses < ActiveRecord::Migration
  def change
  	remove_column :statuses, :name
    add_reference :statuses, :user, index: true
  end
end
