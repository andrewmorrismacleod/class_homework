require('minitest/autorun')
require('minitest/rg')
require_relative('../class_A')

class TestStudent< MiniTest::Test

  def test_student_name
    student = Student.new("Andrew", "E27")
    assert_equal("Andrew", student.get_name)
  end

  def test_cohort
    student = Student.new("Andrew", "E27")
    assert_equal("E27", student.get_cohort)
  end

  def test_set_student_name
    student = Student.new("Andrew", "E27")
    student.set_name("Dave")
    assert_equal("Dave", student.get_name)
  end

  def test_set_cohort
    student = Student.new("Andrew", "E27")
    student.set_cohort("E28")
    assert_equal("E28", student.get_cohort)
  end

  def test_talk
    student = Student.new("Andrew", "E27")
    assert_equal("I can talk!", student.talk)
  end

  def test_say_favourite_language
    student = Student.new("Andrew", "E27")
    assert_equal("I love VBA", student.say_favourite_language("VBA"))
  end


end
