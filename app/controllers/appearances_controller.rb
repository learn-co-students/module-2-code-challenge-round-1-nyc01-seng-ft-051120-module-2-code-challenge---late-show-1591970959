class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    appearance = Appearance.create(a_params)
    if appearance.valid?
    redirect_to episode_path(appearance.episode_id)
    else
      flash[:appearance_errors] = appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  private

  def a_params
    params.require(:appearance).permit!
  end

end

