class TeamsController < ApplicationController

  # def index

  #   @all_teams = Team.all

  #   @all_players = Player.all
  #   render :index
  # end

  def new
    @players = Player.all
  end

  def create

    new_team = Team.create(name: params["team"]["name"])
    params["team"]["players"].values.each do |player_index|
      player = Player.find(player_index)
      new_team.players << player
    end

    redirect_to "/"

  end

end