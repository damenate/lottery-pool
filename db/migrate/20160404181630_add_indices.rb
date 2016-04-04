class AddIndices < ActiveRecord::Migration
  def change
    add_index :friends, :friend_pool_id
    add_index :employees, :office_pool_id
  end
end
