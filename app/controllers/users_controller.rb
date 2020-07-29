class UsersController < ApplicationController

    def index
        @users = User.all
      end

    def show
        @user = User.find(params[:id])
        @chirps = @user.chirps.order("created_at DESC")
        friend_ids = @user.friends.map { |f| f.}
    end

    def userprofile
        @user = current_user
        @chirps = @user.chirps.order("created_at DESC")
    end

end