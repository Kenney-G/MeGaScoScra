module MenuFunctions
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
end

