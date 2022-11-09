def palindrome?(str)
  reverse_str = ""

  for i in (str.length - 1).downto(0)
    reverse_str += str[i]
  end

  reverse_str == str
end

def substrings(str)
  new_str = str
  result_list = []
  temp_str = ""
  n = 0

  while n < str.length
    for i in 0...new_str.length
      temp_str += new_str[i]
      result_list << temp_str
    end
    temp_str = ""
    new_str = str[n + 1..-1]
    n += 1
  end
  result_list
end

def palindrome_substrings(str)
  result_list = []
  list = substrings(str)
  list.each { |ele| result_list << ele if ele.length > 1 && palindrome?(ele) }
  result_list
end

p palindrome_substrings("madam")
