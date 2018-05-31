require 'faker'
class Student
  attr_reader :name, :year, :id, :course, :department
  @@count = 0
  def initialize
    @id = @@count += 1
    @name = Faker::Name.name
    @course = Faker::Educator.course
    @department = Faker::Job.field
    @year = Date.today.year - (1..10).to_a.shuffle.sample
  end

  def name
    @name
  end

  def details
    "#{@name} with Roll Number #{@id} has enrolled for #{@course} in the #{@department} for the year #{@year}"
  end
end
