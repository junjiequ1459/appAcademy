def my_map!(arr, &prc)
  result = []
  arr.each { |e| result << prc.call(e) }

  arr.each_with_index { |e, i| arr[i] = result[i] }
  arr
end

arr_1 = [1, 2, 3, 4]
#p my_map!(arr_1) { |n| n * n }

def two?(arr, &prc)
  count = 0

  arr.each { |e| count += 1 if prc.call(e) }
  count == 2
end

# p two?([7, 4, 10, 3, 1]) { |x| x.even? }

def nor_select(arr, prc1, prc2)
  result = []
  arr.each { |e| result << e if !prc1.call(e) && !prc2.call(e) }
  result
end

even = Proc.new { |n| n.even? }
positive = Proc.new { |n| n > 0 }
# p nor_select([-2, -4, 7, -7, -5], even, positive)

def array_of_hash_sum(arr)
  result = 0
  arr.each do |e|
    e.each { |k, v| result += v }
  end
  result
end

# arr_1 = [
#   { matt: 17, polina: 19, erin: 18 },
#   { jj: 9, anna: 17 },
# ]
# p array_of_hash_sum(arr_1)

def slangify(sentence)
  split = sentence.split(" ")
  (split.map { |e| remove_vowel(e) }).join(" ")
end

def remove_vowel(word)
  vowels = "aeiouAEIOU"

  for i in 0...word.length
    if vowels.include? word[i]
      return word[0...i] + word[i + 1..-1]
    end
  end
  word
end

# p slangify("follow the yellow brick road")

def char_counter(str, *args)
  obj = {}
  args.each { |e| obj[e] = 0 }

  str.each_char do |i|
    if obj[i]
      obj[i] += 1
    else
      if args.length < 1
        obj[i] = 1
      end
    end
  end
  obj
end

# p char_counter("mississippi", "m", "i")
