class HighSchool
  attr_accessor :student_count, :vacancies, :students, :dropped_out, :alumni

  def initialize(student_count)
    @student_count = student_count
    @vacancies = student_count
    @students = []
    @dropped_out = []
    @alumni = []
  end

  def enroll(student_name)
    @vacancies -= 1;
    @students.push(student_name)
  end

  def drop_out(student_name)
    @vacancies += 1;
    @dropped_out.push(student_name)
    @students.delete(student_name)
  end

  def graduate(student_name)
    @vacancies += 1;
    @students.delete(student_name)
    @alumni.push(student_name)
  end
end
