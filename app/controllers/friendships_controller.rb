class FriendshipsController < ApplicationController

    def create
        @friendship = Friendship.new
        @friendship = Friendship.create(params)
        byebug
        if @friendship.save
            flash[:follow_success] = "Followed!"
            redirect_to user_path(params[:friend_id])
        else
            redirect_to user_path(params[:friend_id])
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
    
end
