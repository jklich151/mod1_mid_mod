class Company
  attr_reader :name, :departments

  def initialize(name)
    @departments = []
  end

  def add_department(department)
    @departments << department
  end
end
