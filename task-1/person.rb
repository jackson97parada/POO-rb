class Person
  attr_accessor :name, :id, :age

  def initialize(name:, id:, age:)
    @name = name
    @id = id
    @age = age
  end

  def self.birth_date(age)
    @age = age
    current_year = Time.now.year
    birth_year = current_year - @age
    "Your birth date is #{birth_year}"
  end
end
