class ChangeBetterPlayersToTeamPlayers < ActiveRecord::Migration[5.2]
  def change
    rename_table :betters_players, :teams_players
  end
end
