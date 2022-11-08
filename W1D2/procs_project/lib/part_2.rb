def reverser(str, &prc)
  prc.call(str.reverse)
end

def word_changer(str, &prc)
  str = str.split(" ").map { |e| prc.call(e) }
  str.join(" ")
end

def greater_proc_value(num, prc_1, prc_2)
  n_1 = prc_1.call(num)
  n_2 = prc_2.call(num)

  if n_1 > n_2
    return n_1
  end
  n_2
end

def and_selector(arr, prc_1, prc_2)
  new_arr = []
  arr.each { |e| new_arr << e if prc_1.call(e) == true && prc_2.call(e) == true }
  new_arr
end

def alternating_mapper(arr, prc_1, prc_2)
  new_arr = []
  arr.each_with_index do |ele, i|
    if i % 2 == 0
      new_arr << prc_1.call(ele)
    else
      new_arr << prc_2.call(ele)
    end
  end
  new_arr
end

proc_1 = Proc.new { |n| n / 2.0 }
proc_2 = Proc.new { |n| n * 1000 }

p alternating_mapper([1, 2, 3, 4, 5], proc_1, proc_2)
