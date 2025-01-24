# spec/student_spec.rb
require 'student'

RSpec.describe Student do
  context 'when initialized with valid data' do
    subject(:student) do
      Student.new(
        first_name: 'Billy',
        last_name: 'Joel',
        grades: { english: 92, math: 88, physics: 85 }
      )
    end

    it 'stores the first name correctly' do
      expect(student.first_name).to eq('Billy')
    end

    it 'stores the last name correctly' do
      expect(student.last_name).to eq('Joel')
    end

    it 'calculates the correct average grade' do
      expect(student.average_grade).to eq(88)  # (92 + 88 + 85) / 3 = 88.33 rounded to 88
    end
  end
end
