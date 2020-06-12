class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
    # byebug
  end

  def create
    if @appearance.valid?
      @appearance.create(appearance_params)
      redirect_to @ppearance.episode
    else
      render :new
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest, :episode, :rating)
  end
end
