require_relative "Employee"


class Manager < Employee

     attr_reader :employees
     
    def initialize(name,title,salary,boss = nil)
         super
         @employees = []
         
         
    end
   
    def bonus(multiplier)
         total_salary = 0
         get_salary = 0

         @employees.each do |employee| 

            if @title == "Founder"

                get_salary = employee.employees.map{|subordinate| subordinate.salary}.sum
    
             end

         total_salary += employee.salary 
         
         end 



        
         (total_salary + get_salary) * multiplier
          
    end

    def  hire(employee)
         
         @employees << employee

    end

   


end