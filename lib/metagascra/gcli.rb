#require 'Gscrape.rb'
require "pry"
require "tty-prompt"

@@user_selection = []

class Gcli
  attr_accessor :title, :score
  def initialize(intro)
  end
  prompt = TTY::Prompt.new
  intro = prompt.say("Hi! Thanks for checking out my gem. Please choose from the following options to get started:")

  user_selection = prompt.select("Select from the following", %w(title random all exit))


  #if choice == title
  #title_return_method
  #elsif user_choice = random
  # random_method
  #elsif user_choice = all
  # all_method
  #elsif user_choice = exit
  #exit_method
  #else
  # "Sorry, I didn't understand that selection." user_choice
  #end


  def exit_method

  end


end

