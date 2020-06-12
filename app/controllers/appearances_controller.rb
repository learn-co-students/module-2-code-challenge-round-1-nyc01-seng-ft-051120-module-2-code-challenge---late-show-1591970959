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
        appearance = Appearance.create(appearance_params)
        redirect_to episodes_path(appearance.episode_id)
    end

    private

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id)
    end

end
