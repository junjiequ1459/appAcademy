def duos(str)
  count = 0
  for i in 0...(str.length - 1)
    count += 1 if str[i] == str[i + 1]
  end
  count
end

# p duos("bootcamp")      # 1
# p duos("wxxyzz")        # 2
# p duos("hoooraay")      # 3
# p duos("dinosaurs")     # 0
# p duos("e")             # 0

def sentence_swap(str, hash)
  result = []
  str_split = str.split(" ")

  str_split.each do |e|
    if hash[e]
      result << hash[e]
    else
      result << e
    end
  end
  result.join(" ")
end

# p sentence_swap("anything you can do I can do",
#                 "anything" => "nothing", "do" => "drink", "can" => "shall") # 'nothing you shall drink I shall drink'

# p sentence_swap("what a sad ad",
#                 "cat" => "dog", "sad" => "happy", "what" => "make") # 'make a happy ad'

# p sentence_swap("keep coding okay",
#                 "coding" => "running", "kay" => "pen") # 'keep running okay'

def hash_mapped(hash, prc, &prc2)
  obj = {}
  hash.each do |k, v|
    obj[prc2.call(k)] = prc.call(v)
  end
  obj
end

# double = Proc.new { |n| n * 2 }
# p hash_mapped({ "a" => 4, "x" => 7, "c" => -3 }, double) { |k| k.upcase + "!!" }
# # {"A!!"=>8, "X!!"=>14, "C!!"=>-6}

# first = Proc.new { |a| a[0] }
# p hash_mapped({ -5 => ["q", "r", "s"], 6 => ["w", "x"] }, first) { |n| n * n }
# # {25=>"q", 36=>"w"}

def counted_characters(string)
  result = []
  obj = {}
  string.each_char do |e|
    if obj[e]
      obj[e] += 1
    else
      obj[e] = 1
    end
  end

  obj.each { |k, v| result << k if v > 2 }
  result
end

# p counted_characters("that's alright folks") # ["t"]
# p counted_characters("mississippi") # ["i", "s"]
# p counted_characters("hot potato soup please") # ["o", "t", " ", "p"]
# p counted_characters("runtime") # []
