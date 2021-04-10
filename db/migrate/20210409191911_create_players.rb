class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.integer :place
      t.integer :score
      t.string :name
      t.integer :double_bogeys
      t.integer :round_1
      t.integer :round_2
      t.integer :round_3
      t.integer :round_4

      t.timestamps
    end
  end
end
