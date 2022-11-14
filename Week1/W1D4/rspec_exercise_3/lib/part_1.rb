def is_prime?(num)
  (2...num).each { |i| return false if num % i == 0 }
  return num >= 2
end

def nth_prime(num)
  count = 0
  i = 0
  while num > count
    if is_prime?(i)
      count += 1
    end
    i += 1
  end
  i - 1
end

def prime_range(min, max)
  result = []

  (min..max).each { |i| result << i if is_prime?(i) }
  result
end
