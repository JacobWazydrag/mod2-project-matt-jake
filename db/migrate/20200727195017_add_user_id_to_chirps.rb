class AddUserIdToChirps < ActiveRecord::Migration[6.0]
  def change
    add_column :chirps, :user_id, :integer
  end
end
