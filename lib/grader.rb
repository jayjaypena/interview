# lib/grader.rb
require 'csv'
require 'student'

class Grader
  attr_reader :students

  def initialize(file_path)
    @students = []
    read_csv(file_path)
  end

  private
  def read_csv(file_path)
    CSV.foreach(file_path, headers: true, header_converters: :symbol) do |row|
      grades = {
        english: row[:english],
        math: row[:math],
        physics: row[:physics]
      }
      student = Student.new(
        first_name: row[:first_name],
        last_name: row[:last_name],
        grades: grades
      )
      @students << student
    end
  end
end
