class FriendshipsController < ApplicationController

    def create
        @friendship = Friendship.create(friendship_params)
        if @friendship.save
            flash[:follow_success] = "Followed!"
            redirect_to user_path(params[:friend_id])
        else
            redirect_to 'users#userprofile'
        end
    end

    def index
        @friendships = Friendship.all
        @user = current_user
    end

    def destroy
        user_id = friendship_params[:friend_id]
        @friendship = Friendship.where(friendship_params)
        @friendship.destroy
        redirect_to user_path(user_id)
    end

    private
    
    def friendship_params
        params.permit(:follower_id, :friend_id)
    end

end
