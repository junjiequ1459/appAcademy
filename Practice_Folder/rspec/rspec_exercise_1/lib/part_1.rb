def average(num1, num2)
  (num1 + num2) / 2.0
end

def average_array(arr)
  (arr.reduce { |c, v| c += v }) / arr.length.to_f
end

def repeat(str, num)
  str * num
end

def yell(string)
  string.upcase + "!"
end

def alternating_case(str)
  split_str = str.split(" ")
  result = []
  split_str.each_with_index do |e, i|
    if i % 2 == 0
      result << e.upcase
    else
      result << e.downcase
    end
  end
  result.join(" ")
end
