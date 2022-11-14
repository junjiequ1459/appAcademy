def my_reject(arr, &prc)
  result = []

  arr.each { |e| result << e if !prc.call(e) }
  result
end

def my_one?(arr, &prc)
  count = 0
  arr.each { |e| count += 1 if prc.call(e) }

  count == 1
end

def hash_select(hash, &prc)
  result_hash = {}
  hash.each { |k, v| result_hash[k] = v if prc.call(k, v) }
  result_hash
end

p hash_select({ "a" => 0, "b" => 1, "c" => 2, "o" => 14 }) { |k, v| "aeiou".include?(k) }

#eq({"a"=>0, "o"=>14})

def xor_select(arr, prc1, prc2)
  result = []
  arr.each { |e| result << e if prc1.call(e) ^ prc2.call(e) }
  result
end

even = Proc.new { |n| n.even? }
positive = Proc.new { |n| n > 0 }
p xor_select([2, 5, 3, 7, 6, -8, -1], even, positive)
# ([5, 3, 7, -8])

def proc_count(num, arr)
  count = 0
  arr.each { |e| count += 1 if e.call(num) }
  count
end

even = Proc.new { |n| n.even? }
div_by_5 = Proc.new { |n| n % 5 == 0 }
positive = Proc.new { |n| n > 0 }

p proc_count(12, [even, div_by_5, positive])
# expect(proc_count(12, [even, div_by_5, positive])).to eq(2)
# expect(proc_count(-4, [even, div_by_5, positive])).to eq(1)
