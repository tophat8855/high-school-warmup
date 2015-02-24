class HighSchool
  attr_accessor :student_count, :vacancies, :students, :dropped_out, :alumni

  def initialize(capacity)
    @capacity = capacity
    @student_count = 0
    @vacancies = capacity
    @students = []
    @dropped_out = []
    @alumni = []
  end

  def enroll(student_name)
    if @student_count < @capacity
      @vacancies -= 1;
      @student_count += 1;
      @students.push(student_name)
    else
      puts "High school at capacity"
    end
  end

  def drop_out(student_name)
    @vacancies += 1;
    @student_count -= 1;
    @dropped_out.push(student_name)
    @students.delete(student_name)
  end

  def graduate(student_name)
    @vacancies += 1;
    @student_count -= 1;
    @students.delete(student_name)
    @alumni.push(student_name)
  end
end
