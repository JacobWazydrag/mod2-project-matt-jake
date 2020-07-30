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
        @friends = current_user.friends
        @user = current_user
    end

    def destroy
        @friendship = Friendship.find(params[:id])
        @friendship.destroy
        redirect_to friendship_path
        #@friendship.destroy
        #relationships.find_by_followed_id(other_user.id).destroy
       
    end

    private
    
    def friendship_params
        params.permit(:follower_id, :friend_id)
    end

end
