class ApplicationController < ActionController::Base

  # helper_method :all_players

  def all_players
    debugger
    @all_players = Player.all
  end

end
