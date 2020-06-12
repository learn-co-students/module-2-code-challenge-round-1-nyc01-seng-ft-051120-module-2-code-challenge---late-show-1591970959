class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
    @guests = Guest.all
    @episodes = Episode.all
  end

  def create
    @appearance = Appearance.new(appearance_params)

    if @appearance.save
      redirect_to episode_path(@appearance.episode_id)
    else
      flash[:errors] = @appearance.errors.full_messages 
      redirect_to new_appearance_path
    end
  end

  def show
  @appearance = Appearance.find(params[:id])
  end


  private

  private
 def appearance_params
   params.require(:appearance).permit(:guest_id, :episode_id, :rating)
 end

end
