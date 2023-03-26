task scrape: :environment do

  puts "scraping"

  require 'nokogiri'
  require 'httparty'


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
end