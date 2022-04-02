class PlayersController < ApplicationController

  def index

    @all_teams = Team.all

    @all_players = Player.all
    render :index
  end
end
