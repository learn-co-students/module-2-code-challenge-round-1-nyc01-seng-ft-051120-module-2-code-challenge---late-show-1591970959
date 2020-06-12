class AppearancesController < ApplicationController
    # before_action :set_appearance, only: %i[]

    def index
        
    end
    
    def new
        @appearance = Appearance.new

        @guests = Guest.all
        @episodes = Episode.all
    end
    
    def create
        @appearance = Appearance.create(appearance_params)

        if @appearance.valid?
            redirect_to episode_path(@appearance.episode_id)
        else
            flash[:appearance_errors] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end

        
    end
    
    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end

    private

    def appearance_params
        params.require(:appearance).permit!
    end
end
