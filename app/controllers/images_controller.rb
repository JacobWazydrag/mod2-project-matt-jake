class ImagesController < ApplicationController
    
    def create
    end
    
    private

    def img_params
        params.require(:image).permit(:user_id, :img_url)
    end

end
