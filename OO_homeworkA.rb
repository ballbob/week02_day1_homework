class Student
  def initialize(student,cohort)
    @student = student
    @cohort = cohort
  end

  def get_student
    return @student
  end

  def get_cohort
    return @cohort
  end

  def set_student(newstudent)
    @student = newstudent
  end

  def set_cohort(newcohort)
    @cohort = newcohort
  end

  def can_they_talk
    return "Yes."
  end

  def favorite_language(language)
    return "I like #{language}."
  end

end
