class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |k, v| k[v] = [] }
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(str)
    @teachers << str
  end

  def enroll(str)
    if @students.length < @student_capacity
      @students << str
      return true
    end
    false
  end

  def enrolled?(str)
    @students.include? str
  end

  def student_to_teacher_ratio
    (@students.length / @teachers.length).floor
  end

  def add_grade(str, num)
    if students.include? str
      @grades[str] << num
      return true
    end
    false
  end

  def num_grades(str)
    @grades[str].length
  end

  def average_grade(str)
    if enrolled?(str)
      if @grades[str].length >= 1
        return ((@grades[str].reduce { |c, v| c += v }) / @grades[str].length).floor
      end
    end
  end
end

bootcamp = Bootcamp.new("Map Academy", "Anyone can be a cartographer.", 6)

p bootcamp
