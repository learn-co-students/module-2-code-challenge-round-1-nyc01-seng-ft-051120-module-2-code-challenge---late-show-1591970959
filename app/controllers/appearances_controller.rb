class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new 
        @guests = Guest.all 
        @episodes = Episode.all 
    end

    def create 



end