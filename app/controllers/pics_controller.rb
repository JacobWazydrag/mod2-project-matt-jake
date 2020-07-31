class PicsController < ApplicationController
    before_action :find_pic, only: [:show, :edit, :update, :destroy]
    
    def index 
        @pics = Pic.all.order("created_at DESC")
    end

    def new 
        @pic = current_user.pics.build
    end 

    def show 
    end

    def create
        @pic = current_user.pics.build(pic_params)

        if @pic.save 
            redirect_to @pic, notice: "Sweet, you uploaded your pic"
        else 
            render 'new'
        end
    end 

    def edit 
        
    end

    def update 
        if @pic.update(pic_params)
            redirect_to @pic, notice: "Grats! You updated your pic"
        else
            render 'edit'
        end
    end

    def destroy 
        @pic.destroy 
        redirect_to pics_path
    end

    private 

    def pic_params 
        params.require(:pic).permit(:description, :image)
    end

    def find_pic
        @pic = Pic.find(params[:id])
    end


end
