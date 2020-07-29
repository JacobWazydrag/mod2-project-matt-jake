class FriendshipsController < ApplicationController

    def create
        @friendship = Friendship.create(friendship_params)
    end

    def index
        @friendships = Friendship.all
        @user = current_user
    end

    private

    def friendship_params
        params.require(:friendship).permit(:follower_id, :friend_id)
    end
    
end
