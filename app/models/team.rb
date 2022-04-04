class Team < ApplicationRecord
  has_and_belongs_to_many :players

  def total_score
    array = []
    self.players.each do |player|
      array << player.score
    end
    array = array.sort
    array = array[0..4].sum
  end
end
