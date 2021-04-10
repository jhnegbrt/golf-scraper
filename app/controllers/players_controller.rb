class PlayersController < ApplicationController

  def index

    @all_betters = Better.all

    @all_players = Player.all
    render :index
  end
end
