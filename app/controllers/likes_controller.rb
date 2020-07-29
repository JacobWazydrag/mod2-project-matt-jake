class LikesController < ApplicationController

def save_like 
  @like = Like.new(chirp_id: params[:chirp_id], user_id: current_user.id)

  respond_to do |format|
    format.json {
      if @like.save 
        { success: true }
      else
        { success: false }
      end
    }
    end
  end
end
