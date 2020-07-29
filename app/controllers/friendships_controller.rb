class FriendshipsController < ApplicationController

    def create
        @friendship = Friendship.create(friendship_params)
    end

    def index
        @friendships = Friendship.all
        @user = current_user
    end

    def destroy
        @friendship = Friendship.where(friendship_params)
        @friendship.destroy
    end

    private

    def friendship_params
        params.require(:friendship).permit(:follower_id, :friend_id)
    end
    
end
