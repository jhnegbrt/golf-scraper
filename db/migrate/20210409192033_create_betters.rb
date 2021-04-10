class CreateBetters < ActiveRecord::Migration[5.2]
  def change
    create_table :betters do |t|
      t.string :name
      t.integer :score
      t.integer :score_guess
      t.integer :double_bogeys

      t.timestamps
    end
  end
end
