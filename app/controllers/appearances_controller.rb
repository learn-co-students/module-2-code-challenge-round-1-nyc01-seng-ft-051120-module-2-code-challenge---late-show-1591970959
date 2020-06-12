class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end
    
    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        appearance = Appearance.create(app_params)
        if appearance.valid?
            redirect_to episode_path(appearance.episode.id)
        else
            flash[:errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end

    private

    def app_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end