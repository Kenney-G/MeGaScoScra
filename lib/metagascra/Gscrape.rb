require "nokogiri"
require "open-uri"
require "pry"

class Gscrape
  attr_accessor :doc, :title, :score

  @@games = []

  def initialize(title, score, doc)
    @title = title
    @score = score
    @doc = doc
  end

  def self.doc
  doc = Nokogiri::HTML(open("https://www.metacritic.com/browse/games/score/metascore/all/all/filtered?sort=desc", "User-Agent" => "opera"))
  end

  def self.games
    @@games
  end

  def self.title
    unf_games = self.doc.css('div_basic_stat a').text
    
  end

  #title_sec = doc.css(#'div.basic_stat a').text
  #score_sec = doc.css(#'div.basic_stat.product_score.brief_metascore')

  #score[0] = title[0].score

  def games_with_scores
    doc = Nokogiri::HTML(open("https://www.metacritic.com/browse/games/score/metascore/all/all/filtered?sort=desc", "User-Agent" => "opera"))
    title_Sec = doc.css("div.basic_stat a").text
    score_sec = doc.css("div.basic_stat.product_score.brief_metascore")

    def self.games
      @@games
    end

  end

end