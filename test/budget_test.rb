require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'
require './lib/budget'

class BudgetTest < Minitest::Test

  def test_it_exists
    skip
    budget = Budget.new(2019)

    assert_instance_of Budget, budget
  end

  def test_it_has_attributes
    skip
    budget = Budget.new(2019)

    assert_equal 2019, budget.year
    assert_equal [], budget.departments
  end

  def test_it_can_add_departments
    skip
    budget = Budget.new(2019)
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    sales = Department.new("Sales")

    budget.add_department(hr)
    assert_equal [hr], budget.departments
    budget.add_department(sales)

    assert_equal [hr, sales], budget.departments
  end

  def test_it_can_calculate_total_expenses
    budget = Budget.new(2019)
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    sales = Department.new("Sales")

    budget.add_department(customer_service)
    budget.add_department(hr)
    budget.add_department(sales)
    customer_service.expense(100)
    hr.expense(200)
    sales.expense(300)
    assert_equal 600, budget.total_expenses
  end

  def test_it_can_calculate_salaries
    skip
    budget = Budget.new(2019)
    customer_service = Department.new("Customer Service")
    hr = Department.new("HR")
    sales = Department.new("Sales")

    budget.add_department(customer_service)
    budget.add_department(hr)
    budget.add_department(sales)

    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})

    customer_service.hire(bobbi)
    hr.hire(aaron)

    assert_equal 190000 ,budget.total_salary
  end
end
