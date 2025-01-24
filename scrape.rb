# scrape.rb
require_relative 'lib/grader'
require 'terminal-table'

file_path = './files/grades.csv'
grader = Grader.new(file_path)

rows = grader.students.map do |student|
  [
    "#{student.first_name} #{student.last_name}",
    student.grades[:english],
    student.grades[:math],
    student.grades[:physics],
    student.average_grade
  ]
end

table = Terminal::Table.new headings: ['Name', 'English', 'Math', 'Physics', 'Average'], rows: rows
puts table
