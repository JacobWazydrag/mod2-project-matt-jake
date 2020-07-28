class Friendship < ApplicationRecord
    
    belongs_to :follower, foreign_key: follower_id, class_name: "User"
    belongs_to :friend, foreign_key: friend_id, class_name: "User"

end
