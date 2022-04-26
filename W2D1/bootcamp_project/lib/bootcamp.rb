class Bootcamp

    #Part 1
    def initialize(name,slogan,student_capacity)
        @name = name
        @slogan = slogan
        @student_capacity = student_capacity
        @students = []
        @teachers = []
        @grades = Hash.new{|k,v| k[v] = []}
    end
     
    def name 
        @name
    end
    
    def slogan
        @slogan
    end

    def teachers
        @teachers
    end

    def students
        @students
    end

    def hire(teacher)
        @teachers.push(teacher)
    end

    def enroll(student)

        if @students.length  < @student_capacity
             @students << student
             true
        else
            false

        end
       
    end

   def enrolled?(student)
        return true if @students.include?(student)
        false
   end
#part 2

  def student_to_teacher_ratio
      return @students.length  /  @teachers.length
  end

  def add_grade(student, grade)
        if @students.index(student)
            @grades[student] << grade
            true
        else
            false
        end
  end


  def num_grades(student)
     @grades[student].length
  end

  def average_grade(student)
    return @grades[student].sum / @grades[student].length if @students.include?(student) && @grades[student] != []
    nil
  end
end
