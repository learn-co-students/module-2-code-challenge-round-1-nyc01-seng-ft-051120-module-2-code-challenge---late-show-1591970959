class EpisodesController < ApplicationController

  def show
    @episode = Episode.find(params[:id])
  end

  def index
    @episodes = Episode.all
  end
end
