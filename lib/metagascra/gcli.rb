require 'pry'
require 'tty-prompt'
require 'nokogiri'
require_relative './game.rb'
require_relative 'Gscrape'

'Hello! Thank you for checking out my gem. This is a tool used to look at the top games on Metacritic.
Just follow the prompt to get started.
````````````````````````````````````````````';sleep(3)
#noinspection RubyCaseWithoutElseBlockInspection
class  Gcli
  attr_accessor :title, :score

  def start
    prompt = TTY::Prompt.new
    @user_selection = prompt.select("What would you like to do? Please select from the following", %w[all random  exit])
    @menu_switch = menu_switch
    @display_games = display_games
    menu_switch
  end

  def menu_switch
    case @user_selection
    when "all"
       display_games
    when "random"
       rand_games
       display_games
    when "exit"
      puts "quit"
    end
  end

  def display_games
    games = Game.all
    games.each.with_index(1) { |g, i| puts "#{i}.#{g.title}" }
    input = gets.chomp.to_i
    if input.between?(1, Game.all.size)
      game = Game.all[input - 1]
      puts game.title
      sleep(3)
      puts ""
      puts ""
      @game = []
      start
    else
      display_games
    end
  end

  def rand_games
    Game.all.sample
    puts game.title
  end

  # @return [Object]
  def exit_method
    'quit'
  end

end