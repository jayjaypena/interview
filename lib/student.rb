# lib/student.rb
class Student
  attr_reader :first_name, :last_name, :grades, :average_grade

  def initialize(first_name:, last_name:, grades:)
    @first_name = first_name
    @last_name = last_name
    @grades = grades
    calculate_average
  end

  private
  def calculate_average
    total_grades = grades.values.map(&:to_i)
    @average_grade = (total_grades.sum.to_f / total_grades.size).round
  end
end
