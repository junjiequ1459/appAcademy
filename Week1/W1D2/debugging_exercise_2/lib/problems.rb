# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
def prime?(num)
  return false if num < 2

  (2...num).each do |factor|
    if num % factor == 0
      return false
    end
  end
  true
end

def largest_prime_factor(num)
  for i in (num - 1).downto(0)
    if prime?(i) && num % i == 0
      return i
    end
  end
  num
end

def unique_chars?(str)
  obj = {}

  for i in 0...str.length
    if obj[str[i]]
      return false
    else
      obj[str[i]] = 1
    end
  end
  true
end

def dupe_indices(arr)
  obj = {}
  arr.each_with_index do |ele, i|
    if obj[ele]
      obj[ele] << i
    else
      obj[ele] = [i]
    end
  end
  obj.filter { |k, v| v.length > 1 }
end

def ana_array(a, b)
  obj_1 = {}
  obj_2 = {}
  a.each { |ele| obj_1[ele] ? obj_1[ele] += 1 : obj_1[ele] = 1 }
  b.each { |ele| obj_2[ele] ? obj_2[ele] += 1 : obj_2[ele] = 1 }

  obj_1 == obj_2
end

p ana_array(["i", "c", "e", "m", "a", "n"], ["c", "i", "n", "e", "m", "a"])
p dupe_indices(["a", "b", "c", "c", "b"])
p unique_chars?("rexqu")
p largest_prime_factor(11)
