function Student(fname, lname) {
    this.fname = fname;
    this.lname = lname;
    this.courses = [];
}


Student.prototype.name = function(){
    return `${fname} ${fname}`;
}

Student.prototype.enroll = function(course){
    if(!this.courses.includes(course)){
      this.courses.push(course);
    }
}

Student.prototype.courseLoad = function(){
    courseHash = {};
    this.courses.forEach(course => { courseHash[course.department] += course.credits }
        )

    return courseHash;
}

function Course(department,name,credits){
    this.department = department;
    this.name = name;
    this.credits = credits;
    this.students = [];
}



Course.prototype.addStudent = function(student) {
    this.students.push(student);
}

arr.forEach(callback) 
