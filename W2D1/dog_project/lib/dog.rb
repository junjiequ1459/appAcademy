class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  #getter name
  def name
    @name
  end

  #getter breed
  def breed
    @breed
  end

  #getter age
  def age
    @age
  end

  #setter age
  def age=(num)
    @age = num
  end

  def bark
    if @age > 3
      return @bark.upcase
    end
    @bark.downcase
  end

  def favorite_foods
    @favorite_foods
  end

  def favorite_food?(str)
    @favorite_foods.any? { |e| e.downcase == str.downcase }
  end
end

# dog1 = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])
