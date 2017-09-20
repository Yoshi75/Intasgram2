class AddUserIdToInstams < ActiveRecord::Migration
  def change
    add_column :instams, :user_id, :integer
  end
end
