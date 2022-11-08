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

p my_count([1, 4, 3, 8]) { |n| n.even? }
p my_select([1, 2, 3, 8]) { |n| n.even? }
p my_map([1, 2, 3]) { |n| 2 * n }
