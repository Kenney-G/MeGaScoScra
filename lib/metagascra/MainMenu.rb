#noinspection RubyClassVariableUsageInspection
class MainMenu
  require 'pry'
  require 'tty-prompt'
  require_relative 'gcli'

  def initialize
    #noinspection RubyClassVariableUsageInspection
    @@prompt = TTY::Prompt.new
    @user_selection = @@prompt.select('What would you like to do? Please select from the following: ', %w[all random
exit])
  end

  def menu_switch
    case @user_selection
    when "all"
      display_games
    when "random"
      rand_games
    when "exit"
      puts "quit"
    else
      exit
    end
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

    def rand_games
      game = Game.all.sample
      puts game.title
    end

    def exit_method
      puts 'quit'
    end
  end




#def self.all_games
  #{code_for_all_games}
  #def self.random_games
  #{code_for_random_games}
  #def exit
  #puts 'quit'
  #end