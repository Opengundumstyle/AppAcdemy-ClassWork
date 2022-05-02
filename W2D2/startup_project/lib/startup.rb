require "employee"

class Startup

    attr_reader :name,:funding,:salaries,:employees

     attr_writer :funding

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



 #part 3

 def average_salary

        sum = 0
        @employees.each do |employee|
            
            title = employee.title

            sum += @salaries[title]

        end

        sum / size
  
 end


def close
   @employees = []
   @funding = 0

end


def acquire(startup)
   
    @funding += startup.funding
    startup.salaries.each do |title,money|

        @salaries[title] = money unless  @salaries.has_key?(title)

    end

    @employees += startup.employees
     
    startup.close

end


end