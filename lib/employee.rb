class Employee
  attr_reader :name, :age, :salary

  def initialize(information)
    @name = information[:name]
    @age = information[:age]
    @salary = information[:salary]
  end
end
