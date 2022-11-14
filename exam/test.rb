class Cat
  def initialize(name, color, age)
    @name = name
    @color = color
    @age = age
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def color
    @color
  end

  def color=(color)
    @color = color
  end

  def age
    @age
  end

  def age=(num)
    @age = (num)
  end
end

cat_1 = Cat.new("rex", "red", 12)

p cat_1.age = 20
