class ImagesController < ApplicationController
    
    def index 


    end 

    def new
        @image = Image.new
        
    end


    def create
        @image = Image.new(img_params)
        redirect_to root_path
    end
    
    private

    def img_params
        params.require(:image).permit(:user_id, :title, :description)
    end

end
