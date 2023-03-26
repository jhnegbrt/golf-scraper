require 'players_helper'

class PlayersController < ApplicationController

  include PlayersHelper

  def index

    fetch_scores

    @all_teams = Team.all

    @all_players = Player.all
    render :index
  end

end
