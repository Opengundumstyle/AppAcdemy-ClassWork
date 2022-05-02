require "employee"

class Startup

    attr_reader :name,:funding,:salaries,:employees

    def initialize(name,funding,salaries)
         @name = name
         @funding = funding 
         @salaries = salaries
         @employees = []

    end

   def valid_title?(title)

    #   @salaries.has_key?(title)

      return true if @salaries[title] 

       false

   end
  

  def >(startup)
     
      self.funding > startup.funding

  end

  def hire(employee,title)
      
      if valid_title?(title)
          @employees << Employee.new(employee,title)
      else
        raise "there is no such title!"
      end

  end


  def size

    @employees.length

  end


  def pay_employee(employee)
      
       salary = @salaries[employee.title]

     if @funding > salary
        employee.pay(salary)
        @funding -= salary

     else
       raise "the company is a scam!"
     end

  end

 def payday
 
    @employees.each do |employee|
        
        pay_employee(employee)

    end

 end





end