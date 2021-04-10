class CreateJoinTablePlayersBetters < ActiveRecord::Migration[5.2]
  def change
    create_join_table :players, :betters do |t|
      # t.index [:player_id, :better_id]
      # t.index [:better_id, :player_id]
    end
  end
end
