require "nokogiri"
require "open-uri"
require "pry"
require_relative '../../lib/metagascra/game'

class Gscrape
  def self.scrape
    doc = Nokogiri::HTML(open("https://www.metacritic.com/browse/games/score/metascore/all/all/filtered?sort=desc", "User-Agent" => "opera"))
    @games_titles = doc.css("div.basic_stat a").map { |node| node.text }.map { |s| s.tr("\n", " ") }.map { |s| s.split(/\s(?=\([A-Z|a-z|0-9]\w+\))/) }.map { |a| a.map { |s| s.strip } }
    @game_links = doc.css("div.basic_stat a").map { |a| a["href"] }
    @game = @games_titles.zip(@game_links)
    @game.each do |game|
      Game.new(game.first.first, game.first.last, game.last)
    end
  end
end
