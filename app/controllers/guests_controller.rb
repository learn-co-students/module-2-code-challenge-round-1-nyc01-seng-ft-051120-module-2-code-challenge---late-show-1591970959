class GuestsController < ApplicationController
  before_action :set_guest, only: [:show]
  
  def index
    @guests = Guest.all

    @episodes = Episode.all
  end

  def show
    @episodes = Episode.all
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

end




