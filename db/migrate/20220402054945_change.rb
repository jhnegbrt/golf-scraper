class Change < ActiveRecord::Migration[5.2]
  def change
    rename_table :betters, :teams
  end
end
