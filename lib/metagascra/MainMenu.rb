require 'pry'
require 'tty-prompt'
require_relative  'menu_functions'
#noinspection RubyClassVariableUsageInspection
class MainMenu
  extend MenuFunctions::InstanceMethods

  def initialize
    @@prompt = TTY::Prompt.new
    @user_selection = @@prompt.select('What would you like to do? Please select from the following: ', %w[all random
exit])
  end

  end