class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_characters = []
    @shows.each do |show|
      show.characters.each do |character|
      if (character.name.upcase == character.name) && character.salary > 500000
        main_characters << character
      end
      end
    end
    main_characters
  end

  def actors_by_show
    hash = Hash.new
    @shows.each do |show|
      hash[show] = show.actors
    end
    hash 
  end
end
