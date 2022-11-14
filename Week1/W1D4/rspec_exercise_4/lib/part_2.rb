def proper_factors(num)
  result = []
  (1...num).each { |e| result << e if num % e == 0 }
  result
end

# p proper_factors(6)
# expect(proper_factors(6)).to match_array([1, 2, 3])
# expect(proper_factors(12)).to match_array([1, 2, 3, 4, 6])
# expect(proper_factors(9)).to match_array([1, 3])

def aliquot_sum(num)
  proper_factors(num).reduce { |k, v| k += v }
end

# p aliquot_sum(6)
# expect(aliquot_sum(6)).to eq(6)
# expect(aliquot_sum(12)).to eq(16)
# expect(aliquot_sum(9)).to eq(4)

def perfect_number?(num)
  aliquot_sum(num) == num
end

def ideal_numbers(num)
  result = []
  count = 0
  i = 1
  while num > count
    if perfect_number?(i)
      count += 1
      result << i
    end
    i += 1
  end
  result
end

p ideal_numbers(2)

# expect(ideal_numbers(2)).to eq([6, 28])
# expect(ideal_numbers(3)).to eq([6, 28, 496])
