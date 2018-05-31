require './student'
require 'pry'
class School

  def initialize
    @students = []
    100.times do
      @students.push(Student.new)
    end
  end

  def student_by_year(year)
    students = @students.select {|s| s if s.year == year.to_i}
    students.map { |s| s.name  }
  end

  def student_details_by_id(id)
    student = @students.find {|s| s if s.id == id.to_i}
    student.details
  end

end
