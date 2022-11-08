def my_map(arr, &prc)
  new_arr = []
  arr.each { |e| new_arr << prc.call(e) }
  new_arr
end

def my_select(arr, &prc)
  new_arr = []
  arr.each { |e| new_arr << e if prc.call(e) }
  new_arr
end

def my_count(arr, &prc)
  count = 0
  arr.each { |e| count += 1 if prc.call(e) }
  count
end

def my_any?(arr, &prc)
  arr.each { |e| return true if prc.call(e) }
  false
end

def my_all?(arr, &prc)
  arr.each { |e| return false if !prc.call(e) }
  true
end

def my_none?(arr, &prc)
  arr.each { |e| return false if prc.call(e) }
  true
end

p my_none?([3, 5, 7, 11]) { |n| n.even? }
p my_all?([3, 5, 7, 11]) { |n| n.odd? }
p my_any?([7, 10, 3, 5]) { |n| n.even? }
p my_count([1, 4, 3, 8]) { |n| n.even? }
p my_select([1, 2, 3, 8]) { |n| n.even? }
p my_map([1, 2, 3]) { |n| 2 * n }
