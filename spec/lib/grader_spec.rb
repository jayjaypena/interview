# spec/grader_spec.rb
require 'grader'
require 'csv'

RSpec.describe Grader do
  describe '#initialize' do
    context 'when reading from the actual CSV file' do
      it 'creates student objects from the CSV data' do
        csv_path = File.expand_path('../../../files/grades.csv', __FILE__)

        grader = Grader.new(csv_path)
        
        expect(grader.students.size).to be > 0
        expect(grader.students.first.first_name).not_to be_empty
        expect(grader.students.first.average_grade).to be_a(Integer)
      end
    end
  end
end
