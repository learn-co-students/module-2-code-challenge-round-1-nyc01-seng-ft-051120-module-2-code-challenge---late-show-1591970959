class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end
  def show
    @guest = Guest.find(params[:id])
  end
  def destroy
    @guest = Guest.find(params[:id])
    @guest.destroy
    redirect_to guests_path
  end
end

