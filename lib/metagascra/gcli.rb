require "pry"
require "tty-prompt"
require_relative "Gscrape"
require_relative "../../lib/metagascra/game"
require_relative  '../../lib/metagascra/menu_functions'
require_relative 'MainMenu'
intro = TTY::Prompt.new
intro.say('Hello! Thank you for checking out my gem. This is a tool used to look at the top games on Metacritic.
Just follow the prompt to get started.
````````````````````````````````````````````'); sleep(3)

class Gcli
  extend MenuFunctions::InstanceMethods
  attr_accessor :title, :score,

      def start
        @game = Gscrape.scrape
        prompt = TTY::Prompt.new
        @user_selection = prompt.select("What would you like to do? Select from the following: ", %w[random all exit])
        menu_switch
      end

end

MainMenu.new