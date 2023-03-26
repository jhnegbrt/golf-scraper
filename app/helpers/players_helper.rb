require 'nokogiri'
require 'httparty'

module PlayersHelper

  def fetch_scores

    most_recent_update = Update.order(created_at: :desc).first

    if (most_recent_update == nil || most_recent_update.created_at < 15.minutes.ago)

      url = "https://www.espn.com/golf/leaderboard"
      unparsed_page = HTTParty.get(url)
      parsed_page = Nokogiri::HTML(unparsed_page)
      players_array = Array.new

      table = parsed_page.css('tbody.Table__TBODY')
      all_players = table.children

      all_players.each do |player|
        name = player.children[2].text
        player = {
          name: name,
          score: player.children[3].text,
        }
        players_array << player
      end

      players_array.each do |player|
        this_player = Player.find_by(name: player[:name])
        if this_player.nil?
          Player.create(
            name: player[:name],
            score: player[:score]
          )
        else
          this_player.update(
            score: player[:score], 
            name: player[:name]
          )
        end
      end

      Update.create()
    end
  end
end
