require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class StudentTest < MiniTest::Test

  def setup
    @student = Student.new("Paolo","E35")
  end

  def test_student_name
    assert_equal("Paolo", @student.name)
  end

  def test_student_set_name
    @student.name = "Marta"
    assert_equal("Marta", @student.name)
  end

  def test_student_speak
    message = @student.say_hello(@student)
    assert_equal("I can talk! I am Paolo", message)
  end

  def test_student_favourite_language
    message = @student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", message)
  end
end
