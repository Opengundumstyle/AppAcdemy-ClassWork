require "employee"



class Startup

    attr_reader :name, :funding, :salaries, :employees

  def initialize(name,funding,salaries)
     @name = name
     @funding = funding
     @salaries = salaries
     @employees = []
  end

  def valid_title?(title)
     return true if salaries[title]
     false
  end

  def >(startup)
     return true if self.funding >  startup.funding
     false
  end

  def hire(name,title)
      if self.valid_title?(title)
        @employees <<  Employee.new(name,title)
      else
         raise "error"
      end
  end

def size
     return @employees.length
end


def pay_employee(employee)
   
    salary = employee.title

        if @funding > @salaries[salary]
            employee.pay (@salaries[salary])
            @funding -= @salaries[salary]

        else
            raise "error"
        end
    
end


def payday

   @employees.each do |employee|
       pay_employee(employee)
   end

end


#part 3
def average_salary
    sum = 0
   @employees.each do |employee|
    sum += @salaries[employee.title]
   end

   sum / @employees.length

end


def close 
    @employees = []
    @funding = 0
end 


def acquire(startup)
    @funding += startup.funding
    startup.salaries.each do |title,money|
          if self.salaries[title] == nil
            self.salaries[title] = money
          end
    end

    startup.employees.each do |employee|
        self.employees << employee
    end
    
    startup.close

end

end