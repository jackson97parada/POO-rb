class Person
  attr_accessor :name, :id, :age

  def initialize(name:, id:, age:)
    @name = name
    @id = id
    @age = age
  end

  def birth_date
    current_year = Time.now.year
    birth_year = current_year - @age
    "Hey #{@name}, Your birth date is #{birth_year}"
  end
end
