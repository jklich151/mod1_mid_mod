class Department
  attr_reader :name, :employees, :hire, :expenses

  def initialize(department)
    @name = department
    @employees = []
    @expenses = 0

  end

  def hire(employees)
    @employees << employees
  end

  def expense(amount)
    @expenses += amount
  end
end
