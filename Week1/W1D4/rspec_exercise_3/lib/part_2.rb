def element_count(arr)
  obj = {}
  arr.each do |e|
    if obj[e]
      obj[e] += 1
    else
      obj[e] = 1
    end
  end
  obj
end

def char_replace!(str, hash)
  for i in 0...str.length
    if hash[str[i]]
      str[i] = hash[str[i]]
    end
  end
  str
end

string_1 = "hello world"
p char_replace!(string_1, { "l" => "7", "e" => "a", " " => "-", "o" => "q" })
#expect(string_1).to eq("ha77q-wqr7d")

def product_inject(arr)
  arr.inject { |k, v| k *= v }
end

p product_inject([4, 2, 5])
