class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.map do |character|
      character.salary
    end.sum
  end

  def highest_paid_actor
    highest_salary = @characters.max_by do |character|
      character.salary
    end
    highest_salary.actor
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end
end
