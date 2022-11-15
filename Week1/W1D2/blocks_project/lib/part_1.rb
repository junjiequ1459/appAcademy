def select_even_nums(arr)
  arr.select { |ele| ele % 2 == 0 }
end

def reject_puppies(arr)
  arr.reject { |obj| obj["age"] < 3 }
end

def count_positive_subarrays(arr)
  arr.count { |ele| ele.reduce { |c, v| c += v } > 0 }
end

def aba_translate(str)
  result_str = ""
  vowels = "aeiou"
  for i in 0...str.length
    if vowels.include? str[i]
      result_str += str[i] + "b" + str[i]
    else
      result_str += str[i]
    end
  end
  result_str
end

def aba_array(arr)
  arr.map { |ele| aba_translate(ele) }
end

#expect(aba_array(["cat", "dog", "butterfly"])).to eq(["cabat", "dobog", "bubutteberfly"])

#expect(aba_translate("cats")).to eq("cabats")
p aba_array(["cat", "dog", "butterfly"])
p aba_translate("cats")
array_2 = [
  [4],
  [-20, 1, 3],
  [4, -5],
  [-1000, 1000, -1, 1],
]
p count_positive_subarrays(array_2)

dogs = [
  { "name" => "Fido", "age" => 3 },
  { "name" => "Spot", "age" => 2 },
  { "name" => "Rex", "age" => 5 },
  { "name" => "Gizmo", "age" => 1 },
]
p reject_puppies(dogs)
p select_even_nums([7, 3, 2, 5, 12])
