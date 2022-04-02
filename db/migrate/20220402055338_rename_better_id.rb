class RenameBetterId < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams_players, :better_id, :team_id
  end
end
