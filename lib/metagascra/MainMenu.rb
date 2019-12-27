#noinspection RubyClassVariableUsageInspection
class MainMenu
  require 'pry'
  require 'tty-prompt'
  require_relative 'gcli'

  def initialize
    #noinspection RubyClassVariableUsageInspection
    @@prompt = TTY::Prompt.new
    user_selection = @@prompt.select('What would you like to do?', %w[all random exit])

    case user_selection
    when "all"
      puts "all_games"
    when "random"
      puts "random_game"
    else
      exit
    end
  end

end

#def self.all_games
  #{code_for_all_games}
  #def self.random_games
  #{code_for_random_games}
  #def exit
  #puts 'quit'
  #end