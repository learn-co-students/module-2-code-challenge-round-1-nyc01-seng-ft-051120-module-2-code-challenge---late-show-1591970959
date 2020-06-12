class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end


  def new
    @guest = Guest.new
  end
  
  

end
