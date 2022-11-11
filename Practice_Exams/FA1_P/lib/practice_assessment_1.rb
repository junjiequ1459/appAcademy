# Define your methods here.
def first_letter_vowel_count(sentence)
  vowel = "aeiouAEIOU"
  list = sentence.split(" ")
  count = 0

  list.each { |e| count += 1 if vowel.include? e[0] }
  count
end

p first_letter_vowel_count("apples are delicious")

def count_true(arr, proc)
  count = 0
  arr.each { |e| count += 1 if proc.call(e) }
  count
end

prc1 = Proc.new { |n| n.even? }
p count_true([1, 2, 3, 4, 5], prc1)

def array_of_array_sum(arr)
  flatten = arr.flatten
  flatten.reduce { |k, v| k += v }
end

p array_of_array_sum([[1, 2], [3, 4]])

def selective_reverse(sentence)
  result = []
  list = sentence.split(" ")
  vowels = "aeiouAEIOU"
  list.each do |e|
    if (vowels.include? e[0]) || (vowels.include? e[-1])
      result << e
    else
      result << e.reverse
    end
  end
  result.join(" ")
end

p selective_reverse("follow the yellow brick road")

def hash_missing_keys(hash, *args)
  result = []
  if args.length == 0
    return result
  end

  args.each { |e| result << e if !hash[e] }

  result
end

p hash_missing_keys({ 1 => "ein", 2 => "zwei", 3 => "drei" }, 0, 2, 4, 6)

def procformation(arr, prc1, prc2, prc3)
  result = []
  arr.each do |ele|
    if prc1.call(ele)
      result << prc2.call(ele)
    else
      result << prc3.call(ele)
    end
  end
  result
end

is_positive = Proc.new { |el| el >= 0 }
square_it = Proc.new { |el| el * el }
minus_hundred = Proc.new { |el| el - 100 }

p procformation([1, 2, -3, 4, -5], is_positive, square_it, minus_hundred)

#testing
