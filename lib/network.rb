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
    all_characters = @shows.map do |show|
      show.characters
    end.flatten

    rich_characters = all_characters.find_all do |character|
      character.salary > 500000
    end

    rich_characters.find_all do |character|
      character.name.upcase == character.name
    end
  end

  def actors_by_show
    hash = Hash.new
    @shows.map do |show|
      hash[show] = show.characters.map do |character|
        character.actor
      end
    end
    hash
  end
end
