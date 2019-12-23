require "pry"
require "tty-prompt"
require_relative "Gscrape"
require_relative "../../lib/metagascra/game"

class Gcli
  attr_accessor :title, :score

  def start
    @game = Gscrape.scrape
    prompt = TTY::Prompt.new
    prompt.say("Hi! Thanks for checking out my gem. Please choose from the following options to get started:")
    @user_selection = prompt.select("Select from the following", %w[random all exit])
    menu_switch
  end

  def display_games
    games = Game.all
    games.each.with_index(1) { |g, i| puts "#{i}. #{g.title}" }
    input = gets.chomp.to_i
    if input.between?(1, Game.all.size)
      game = Game.all[input - 1]
      puts game.title
    else
      display_games
    end
  end

  def menu_switch
    case @user_selection
      when "all"
        display_games
    when "random"
      rand_games
    when "exit"
      puts "quit"
    end
    end

  def rand_games
    game = Game.all.sample
    puts game.title
  end

  def exit_method
  end
end
