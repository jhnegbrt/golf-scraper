class ChangeTeamPlayers < ActiveRecord::Migration[5.2]
  def change
    rename_table :teams_players, :players_teams
  end
end
