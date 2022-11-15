# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
  def span
    if self.length == 0
      return nil
    end

    if self.all? { |e| e.is_a? Integer }
      return self.max - self.min
    end
  end

  def average
    if self.length == 0
      return nil
    end
    if self.all? { |e| e.is_a? Integer }
      return (self.reduce { |k, v| k += v }) / self.length.to_f
    end
  end

  def median
    sort = self.sort
    length = self.length
    if length == 0
      return nil
    end

    if self.length % 2 == 0
      return (sort[(length / 2) - 1] + sort[(length / 2)]) / 2.0
    end

    sort[(length / 2)]
  end

  def counts
    hash = {}
    self.each do |e|
      if hash[e]
        hash[e] += 1
      else
        hash[e] = 1
      end
    end
    hash
  end

  def my_count(value)
    count = 0
    self.each { |e| count += 1 if e == value }
    count
  end

  def my_index(value)
    for i in 0...self.length
      if value == self[i]
        return i
      end
    end
    nil
  end

  def my_uniq
    result = []
    self.each { |e| result << e if !result.include? e }
    result
  end

  def my_transpose
    result = Array.new(self.length) { [] }
    i = 0
    j = 0
    while i < self.length
      while j < self.length
        result[i] << self[j][i]
        j += 1
      end
      i += 1
      j = 0
    end
    result
  end
end

arr_1 = [
  ["a", "b", "c"],
  ["d", "e", "f"],
  ["g", "h", "i"],
]

p arr_1.my_transpose
