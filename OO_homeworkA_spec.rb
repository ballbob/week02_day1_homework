require ('minitest/autorun')
require_relative('./OO_homeworkA')

class TestOOHomework < MiniTest::Test

  def test_get_name
    bob = Student.new("Bob",10)
   assert_equal("Bob", bob.get_student)
  end

  def test_get_cohort
    bob = Student.new("Bob",10)
    assert_equal(bob.get_cohort,10)
  end

  def test_set_student
    bob = Student.new("Bob",10)
    assert_equal("bob",bob.set_student("bob"))
  end

  def test_set_cohort
    bob = Student.new("Bob",10)
    assert_equal(bob.set_cohort(11),11)
  end

  def test_can_they_talk
    bob = Student.new("Bob",10)
    assert_equal(bob.can_they_talk,"Yes.")
  end

  def test_favorite_language
    bob = Student.new("Bob",10)
    assert_equal("I like R.",bob.favorite_language)
  end


end