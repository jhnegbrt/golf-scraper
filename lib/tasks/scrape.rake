task scrape: :environment do

  require 'nokogiri'
  require 'httparty'

  url = "https://www.cbssports.com/golf/leaderboard/pga-tour/26751651/the-masters/"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  players_array = Array.new

  all_players = parsed_page.css('tr.TableBase-bodyTr')

  all_players.each do |player|
    name = player.children[3].at_css("span.CellPlayerName--short").text
    player = {
      # place: player.children[1].text,
      name: name,
      score: player.children[4].text,
    }
    players_array << player
  end

  players_array.each do |player|
    this_player = Player.find_by(name: player[:name])
    if this_player.nil?
      Player.create(
        # place: player[:place],
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
end