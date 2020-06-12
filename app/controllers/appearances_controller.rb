class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all 
    end 

    def create 
        @appearance = Appearance.create(ap_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else 
            flash[:errors] = @appearance.errors.full_messages 
            redirect_to new_appearance_path 
        end 
    end 

    private 

    def ap_params 
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end 
end
