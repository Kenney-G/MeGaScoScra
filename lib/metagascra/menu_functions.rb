#require_relative  '../metagascra/gcli'
#require_relative  '../../lib/metagascra/MainMenu'
module MenuFunctions
  module InstanceMethods
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
  end

