def strange_sums(arr)
  count = 0
  for i in 0...arr.length
    for j in i + 1...arr.length
      if arr[i] + arr[j] == 0
        count += 1
      end
    end
  end
  count
end

# p strange_sums([2, -3, 3, 4, -2])     # 2
# p strange_sums([42, 3, -1, -42])      # 1
# p strange_sums([-5, 5])               # 1
# p strange_sums([19, 6, -3, -20])      # 0
# p strange_sums([9])                   # 0

def pair_product(arr, product)
  for i in 0...arr.length
    for j in i + 1...arr.length
      if arr[i] * arr[j] == product
        return true
      end
    end
  end
  false
end

# p pair_product([4, 2, 5, 8], 16)    # true
# p pair_product([8, 1, 9, 3], 8)     # true
# p pair_product([3, 4], 12)          # true
# p pair_product([3, 4, 6, 2, 5], 12) # true
# p pair_product([4, 2, 5, 7], 16)    # false
# p pair_product([8, 4, 9, 3], 8)     # false
# p pair_product([3], 12)             # false

def rampant_repeats(str, hash)
  result = ""
  str.each_char do |e|
    if hash[e]
      result += e * hash[e]
    else
      result += e
    end
  end
  result
end

# p rampant_repeats("taco", { "a" => 3, "c" => 2 })             # 'taaacco'
# p rampant_repeats("feverish", { "e" => 2, "f" => 4, "s" => 3 }) # 'ffffeeveerisssh'
# p rampant_repeats("misispi", { "s" => 2, "p" => 2 })          # 'mississppi'
# p rampant_repeats("faarm", { "e" => 3, "a" => 2 })            # 'faaaarm'

def perfect_square(num)
  for i in 1..num
    if i * i == num
      return true
    end
  end
  false
end

# p perfect_square(1)     # true
# p perfect_square(4)     # true
# p perfect_square(64)    # true
# p perfect_square(100)   # true
# p perfect_square(169)   # true
# p perfect_square(2)     # false
# p perfect_square(40)    # false
# p perfect_square(32)    # false
# p perfect_square(50)    # false

def anti_prime?(num)
  for i in 1..num
    if divisor_count(i) > divisor_count(num)
      return false
    end
  end
  true
end

def divisor_count(num)
  count = 0
  for i in 1..num
    if num % i == 0
      count += 1
    end
  end
  count
end

# p anti_prime?(24)   # true
# p anti_prime?(36)   # true
# p anti_prime?(48)   # true
# p anti_prime?(360)  # true
# p anti_prime?(1260) # true
# p anti_prime?(27)   # false
# p anti_prime?(5)    # false
# p anti_prime?(100)  # false
# p anti_prime?(136)  # false
# p anti_prime?(1024) # false

def matrix_addition(n1, n2)
  result = Array.new(n1.length) { [] }
  for i in 0...(n1.length)
    for j in 0...(n1[i].length)
      result[i] << n1[i][j] + n2[i][j]
    end
  end
  result
end

matrix_a = [[2, 5], [4, 7]]
matrix_b = [[9, 1], [3, 0]]
matrix_c = [[-1, 0], [0, -1]]
matrix_d = [[2, -5], [7, 10], [0, 1]]
matrix_e = [[0, 0], [12, 4], [6, 3]]

# p matrix_addition(matrix_a, matrix_b) # [[11, 6], [7, 7]]
# p matrix_addition(matrix_a, matrix_c) # [[1, 5], [4, 6]]
# p matrix_addition(matrix_b, matrix_c) # [[8, 1], [3, -1]]
# p matrix_addition(matrix_d, matrix_e) # [[2, -5], [19, 14], [6, 4]]

def mutual_factors(*args)
  result = []
  min = args.min
  for i in 1..min
    if args.all? { |e| e % i == 0 }
      result << i
    end
  end
  result
end

# p mutual_factors(50, 30)            # [1, 2, 5, 10]
# p mutual_factors(50, 30, 45, 105)   # [1, 5]
# p mutual_factors(8, 4)              # [1, 2, 4]
# p mutual_factors(8, 4, 10)          # [1, 2]
# p mutual_factors(12, 24)            # [1, 2, 3, 4, 6, 12]
# p mutual_factors(12, 24, 64)        # [1, 2, 4]
# p mutual_factors(22, 44)            # [1, 2, 11, 22]
# p mutual_factors(22, 44, 11)        # [1, 11]
# p mutual_factors(7)                 # [1, 7]
# p mutual_factors(7, 9)              # [1]

def tribonacci_number(n)
  base = [1,1,2]
  
  while
end

p tribonacci_number(1)  # 1
p tribonacci_number(2)  # 1
p tribonacci_number(3)  # 2
p tribonacci_number(4)  # 4
p tribonacci_number(5)  # 7
p tribonacci_number(6)  # 13
p tribonacci_number(7)  # 24
p tribonacci_number(11) # 274