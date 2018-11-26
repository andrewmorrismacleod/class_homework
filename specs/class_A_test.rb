require('minitest/autorun')
require('minitest/rg')
require_relative('../class_A')

class TestStudent< MiniTest::Test

  def test_student_name
    student = Student.new("Andrew", "E27")
    assert_equal("Andrew", student.get_name)
  end

end
