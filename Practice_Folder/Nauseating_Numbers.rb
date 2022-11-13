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
  str.each do |e|
    if hash[e]
      result += e * hash[e]
    else
      result += e
    end
  end
  result
end

p rampant_repeats("taco", { "a" => 3, "c" => 2 })             # 'taaacco'
p rampant_repeats("feverish", { "e" => 2, "f" => 4, "s" => 3 }) # 'ffffeeveerisssh'
p rampant_repeats("misispi", { "s" => 2, "p" => 2 })          # 'mississppi'
p rampant_repeats("faarm", { "e" => 3, "a" => 2 })            # 'faaaarm'
