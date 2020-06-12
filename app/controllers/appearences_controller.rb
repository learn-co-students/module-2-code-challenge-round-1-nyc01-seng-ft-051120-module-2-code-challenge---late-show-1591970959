class AppearencesController < ApplicationController
  def show
    @appearence = Appearence.find(params[:id])
  end
  def new
    @appearence = Appearence.new
    @guest = Guest.all
    @episode = Episode.all
  end
  def create
    appearence = Appearence.create(appearence_params)
    if appearence.valid?
    redirect_to episode_path(appearence.episode_id)
    else
      flash[:errors]=appearence.errors.full_messages
      redirect_to new_appearence_path
    end
  end
  private
  def appearence_params
    params.require(:appearence).permit(:guest_id,:episode_id,:rating)
  end
end
