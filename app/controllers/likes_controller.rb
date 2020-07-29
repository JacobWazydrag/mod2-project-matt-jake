class LikesController < ApplicationController

    def create
        @like = Like.create(like_params)
    end

    private

    def like_params
        params.require(:like).permit(:user_id, :chirp_id)
    end

end
