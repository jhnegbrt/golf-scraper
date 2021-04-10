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

  url = "https://www.cbssports.com/golf/leaderboard/"
  unparsed_page = HTTParty.get(url)
  parsed_page = Nokogiri::HTML(unparsed_page)
  players_array = Array.new
  # players = parsed_page.css('tbody.Table__TBODY')
  all_players = parsed_page.css('tr.TableBase-bodyTr')
  all_players.each do |player|
    name_array = player.children[3].text.split
    name = name_array[0] + " " + name_array[2]
    player = {
      place: player.children[1].text,
      name: name,
      score: player.children[4].text,
      # round_1: player.children[7].text,
      # round_2: player.children[8].text,
      # round_3: player.children[9].text,
      # round_3: player.children[10].text
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