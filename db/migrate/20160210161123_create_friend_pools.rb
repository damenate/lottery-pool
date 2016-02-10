class CreateFriendPools < ActiveRecord::Migration
  def change
    create_table :friend_pools do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
