class Budget
  attr_reader :year, :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(department)
    @departments << department
  end

  def total_expenses
    total = []
    require "pry"; binding.pry
    @departments.each do |department|
      total << department.expenses
    end
    total.sum
  end

  def total_salary
    total_s = []
    @departments.each do |department|
      department.employees.each do |employee|
        total_s << employee.salary.to_i
      end
    end
    total_s.sum
  end
end
