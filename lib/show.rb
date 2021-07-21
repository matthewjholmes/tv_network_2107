class Show

  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    characters.map { |c| c.salary}.sum
  end

  def highest_paid_actor
    characters.max_by { |c| c.salary}.actor
  end

  def actors
    characters.map { |c| c.actor}
  end
end
