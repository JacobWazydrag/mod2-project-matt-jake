class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.integer :follower_id
      t.integer :friend_id

      t.timestamps
    end
    add_index :friendships, :follower_id
    add_index :friendships, :friend_id
    add_index :friendships, [:follower_id, :friend_id], unique: true
  end
end
