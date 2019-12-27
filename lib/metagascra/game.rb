# require ''
# require ''

#noinspection ALL
class Game
  attr_accessor :title, :system, :link
  @@games = []

  def initialize(title, system, link)
    @title = title
    @link = link
    @system = system
    save
  end

  def save
    @@games << self
  end

  def self.all
    @@games
  end

  def menu_switch
    if intro?
      MainMenu
    else
      intro
    end
  end

end
