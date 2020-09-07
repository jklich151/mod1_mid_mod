require 'minitest/autorun'
require 'minitest/pride'
require './lib/employee'
require './lib/department'
require './lib/company'


class CompanyTest < Minitest::Test
  def test_it_exists
    dasani = Company.new("Dasani")

    assert_instance_of Company, dasani
  end

  def test_there_are_departments
    dasani = Company.new("Dasani")
    customer_service = Department.new("Customer Service")
    sales = Department.new("Sales")
    hr = Department.new("Hr")

    assert_equal [], dasani.departments

    dasani.add_department(sales)
    dasani.add_department(hr)

    assert_equal [sales, hr], dasani.departments
  end

  def test_can_list_employees
    dasani = Company.new("Dasani")
    customer_service = Department.new("Customer Service")
    sales = Department.new("Sales")
    hr = Department.new("Hr")
    dasani.add_department(customer_service)
    dasani.add_department(sales)
    dasani.add_department(hr)
    bobbi = Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"})
    aaron = Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"})
    judy = Employee.new({name: "Judy Smith", age: "32", salary: "95000"})

    customer_service.hire(bobbi)
    sales.hire(aaron)
    hr.hire(judy)


    assert_equal [bobbi, aaron, judy], dasani.employees
  end
end
