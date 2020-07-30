class ImagesController < ApplicationController
    
    def create
        @image = Image.create(image_params)
        redirect_to root_path
    end
    
    private

    def img_params
        params.require(:image).permit(:user_id, :img_url)
    end

end
