require './school'

school = School.new
puts "Welcome to my school. We have 100 students"
puts "Enter Roll Number to check details"
roll_number = gets.chomp
details = school.student_details_by_id(roll_number)
puts details
puts "Enter the year to list the students of that year"
year = gets.chomp
students = school.student_by_year(year)
students.each do |student|
  puts "#{student} joined in #{year}"
end
