class UsersController < ApplicationController

    def index
        @users = User.all
      end

    def show 
        @user = User.find(params[:id])
        # if @user == current_user
        #     redirect_to 'users#userprofile'
        # else 
        #     redirect_to new_user_session_path
        # end
    end

    def userprofile
        @user = current_user
        @chirps = @user.chirps.order("created_at DESC")
    end

end