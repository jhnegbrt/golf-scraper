class ApplicationController < ActionController::Base

  # helper_method :all_players

  def all_players
    @all_players = Player.all
  end

end
