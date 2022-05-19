class Employee
  
    attr_accessor :wage

    def wage
      20_000
    end
  end
  
  class Manager < Employee

    def wage
      50_000
    end
  end
  
  class CEO < Manager
    def wage
      1_000_000
    end
  end
  
  # calculate the total salary of many employees
  def total_salary(*employees)
    total = 0
    employees.each do |employee|
      # Don't know/care what kind of `Employee` (regular, Manager,
      # or CEO) this is. We can treat them all the same.
      total += employee.wage
    end
  end

  brian = Manager.new
  cindy = CEO.new
  alex = Employee.new
  alan = Employee.new
  lucy = Employee.new
  alec = Employee.new

  p total_salary(brian,cindy,alex,alan,lucy,alec)
  
  
 