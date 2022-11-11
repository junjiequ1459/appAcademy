def prizz_proc(arr, prc1, prc2)
  result = []
  arr.each { |e| result << e if prc1.call(e) ^ prc2.call(e) }
  result
end

def maximum(arr, &prc)
  result = arr[0]
  if arr.length == 0
    return nil
  end
  for i in 0...arr.length
    if prc.call(arr[i]) >= prc.call(result)
      result = arr[i]
    end
  end
  result
end

def my_group_by(arr, &prc)
  obj = {}
  arr.each do |e|
    if obj[prc.call(e)]
      obj[prc.call(e)] << e
    else
      obj[prc.call(e)] = [e]
    end
  end
  obj
end

array_1 = ["mouse", "dog", "goat", "bird", "cat"]
# let(:array_2) { [1, 2, 9, 30, 11, 38] }
answer_1 = { 5 => ["mouse"], 3 => ["dog", "cat"], 4 => ["goat", "bird"] }
p my_group_by(array_1) { |s| s.length }

def max_tie_breaker(arr, prc, &prc2)
  result = arr[0]
  arr.each do |e|
    if prc2.call(e) > prc2.call(result)
      result = e
    elsif prc2.call(e) == prc2.call(result)
      if prc.call(e) > prc.call(result)
        result = e
      end
    end
  end
  result
end

array_1 = ["potato", "swimming", "cat"]
array_2 = ["cat", "bootcamp", "swimming", "ooooo"]
array_3 = ["photo", "bottle", "bother"]
length = Proc.new { |s| s.length }
o_count = Proc.new { |s| s.count("o") }

p max_tie_breaker(array_1, o_count, &length)
p max_tie_breaker(array_2, length, &o_count)
# eq(swimming)
# eq('ooooo')

def silly_syllables(sentence)
  vowels = "aeiouAEIOU"
end
