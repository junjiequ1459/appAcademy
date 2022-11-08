def average(num1, num2)
  (num1 + num2) / 2.0
end

def average_array(arr)
  (arr.reduce { |c, v| c += v }) / arr.length.to_f
end

def repeat(str, num)
  str * num
end

def yell(str)
  str.upcase + "!"
end

def alternating_case(str)
  result_list = []
  str.split(" ").each_with_index do |ele, idx|
    if idx % 2 == 0
      result_list << ele.upcase
    else
      result_list << ele.downcase
    end
  end
  result_list.join(" ")
end

p average(5, 10)
p average(4, 8)
p average_array([2, 4, 6])
p repeat("hello", 2)
p yell("world")
p alternating_case("code never lies, comments sometimes do.")
