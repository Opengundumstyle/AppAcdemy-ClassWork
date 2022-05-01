class Bootcamp

attr_reader :name, :slogan, :teachers , :students

#part 1
   def initialize(name,slogan,student_capacity)
     @name = name
     @slogan = slogan
     @student_capacity = student_capacity
     @students = []
     @teachers = []
     @grades = Hash.new{|k,v| k[v] = []}

   end
    
def hire(teacher)
    @teachers << teacher
end

def enroll(student)
    if @students.length < @student_capacity
        @students << student
      
        return true
    else
        return false
end

end


def enrolled?(student)
 
      @students.include?(student)

end


 
#part 2

def student_to_teacher_ratio
    @students.length  / @teachers.length
end

def add_grade(student, grade)
    if self.enrolled?(student)
         @grades[student] << grade
         return true
    else
        return false
         
    end
end


def num_grades(student)

      @grades[student].count

end


def average_grade(student)
     
    if enrolled?(student)  && num_grades(student) > 0
        
        return @grades[student].sum / num_grades(student)

    end

end



end