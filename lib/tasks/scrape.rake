task scrape: :environment do

  require 'nokogiri'
  require 'httparty'

  # url = "https://www.espn.com/golf/leaderboard"
  # unparsed_page = HTTParty.get(url)
  # parsed_page = Nokogiri::HTML(unparsed_page)
  # players_array = Array.new
  # players = parsed_page.css('tbody.Table__TBODY')
  # all_players = players.css('tr.Table__even')
  # all_players.each do |player|
  #   next if player.children[3].nil? || player.children[2].nil?
  #   player = {
      
  #     # place: player.children[0].text,
  #     score: player.children[3].text,
  #     name: player.children[2].text
  #   }
  #   players_array << player
  # end

  url = "https://www.cbssports.com/golf/leaderboard/pga-tour/26751651/the-masters/"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  players_array = Array.new
  # players = parsed_page.css('tbody.Table__TBODY')
  all_players = parsed_page.css('tr.TableBase-bodyTr')

  all_players.each do |player|

    name = player.children[1].at_css("span.CellPlayerName--short").text
    player = {
      # place: player.children[1].text,
      name: name,
      score: 0
      # score: player.children[4].text,
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