class AppearancesController < ApplicationController
    # before_action :find_appearance, only: [:show]

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
        if appearance.valid?
            redirect_to episode_path(appearance.episode_id)
        else
            flash[:appearance_errors] = appearance.errors.full_messages
            redirect_to new_appearance_path
        end
    end


    private

    # def find_appearance
    #     @appearance = Appearance.find(params[:id])
    # end

    def appearance_params
        params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end
end
