class AddIndices < ActiveRecord::Migration
  def change
    add_index :users, :pool_id
  end
end
