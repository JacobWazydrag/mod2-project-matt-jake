class Friendship < ApplicationRecord
    
    belongs_to :follower, foreign_key: :follower_id, class_name: "User"
    belongs_to :friend, foreign_key: :friend_id, class_name: "User"

    validates :follower_id, presence: true
    validates :friend_id, presence: true
    
    # def find_friendsof
    #     @friendsof = []
    #     current_user.friends.each do |friend|
    #         friend.friends.each do |friendof|
    #             @friendsof << friendof
    #         end
    #     end
    #     @friendsof = @friendsof.tally
    #     @friendsof
    # end

end