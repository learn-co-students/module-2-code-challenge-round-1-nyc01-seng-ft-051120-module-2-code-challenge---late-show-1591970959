class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @episodes = Episode.all.uniq
        @guests = Guest.all.uniq
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:errors] = @appearance.errors.full_messages

            redirect_to new_appearance_path
        end
    end

    def index
      @appearances = Appearance.all
    end

    private

    def appearance_params
        params.require(:appearance).permit!
    end
  end