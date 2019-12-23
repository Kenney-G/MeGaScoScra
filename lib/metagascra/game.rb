# require ''
# require ''

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
end
