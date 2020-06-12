class AppearancesController < ApplicationController
    
    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end
    
    
    def new
       @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
        
        if @appearance.valid?
            redirect_to appearance_path(appearance.id)
        else
            flash[:error]= @appearance.errors.full_messages
            redirect_to new_appearance_path
        end

    end


    private
    def appearance_params
        params.require(:appearance).permit!
    end 
end
