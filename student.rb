class Student

  attr_reader :name, :cohort
  attr_writer :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def say_hello(student)
    return "I can talk! I am #{student.name}"
  end

  def say_favourite_language(language)
    return "I love #{language}!"
  end
end
