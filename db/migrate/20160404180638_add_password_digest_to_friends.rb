class AddPasswordDigestToFriends < ActiveRecord::Migration
  def change
    add_column :friends, :password_digest, :string
  end
end
