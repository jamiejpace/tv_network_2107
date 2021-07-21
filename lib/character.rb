class Character
  attr_reader :attributes, :name, :actor, :salary

  def initialize(attributes)
    @attributes = attributes
    @name = attributes[:name]
    @actor = attributes[:actor]
    @salary = attributes[:salary]
  end
end
