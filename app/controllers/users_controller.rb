class UsersController < ApplicationController

    def index
        if current_user
            @chirps = Chirp.all.order("created_at DESC")
        else 
          redirect_to new_user_session_path
        end
    end

    def show
        @user = User.find(params[:id])
        @chirps = @user.chirps.order("created_at DESC")
    end

    def userprofile
        if current_user
            @user = current_user
            @chirps = @user.chirps.order("created_at DESC")
        else
            redirect_to new_user_session_path
        end
    end

end