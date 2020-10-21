class Student
  attr_reader :name

  def initialize(name, grades)
    @name = name
    @grades = grades
  end

  def average
    @grades.sum / @grades.size.to_f
  end

  def higher_grade
    @grades.max
  end

  def grade_list
    "#{name} #{@grades}"
  end

  def to_s
    "#{@name} #{@grades}"
  end
end



#student01 = Student.new([2,6,3,6])
#puts student01.average

students = ['Juan','Pedro','Diego','Maria','josefina','Belen','Adriana']

student_arr = students.map do |student|
  Student.new(student, Array.new(4).map {rand(1..7)})
end

#para sacar la mejor nota de cada estudiante
student_arr.each do |student|
  puts "#{student.name}: #{student.higher_grade}"
end

#visualizar alumnos y sus notas
puts student_arr

student_arr.each do |student|
  puts student.grades_list
end
