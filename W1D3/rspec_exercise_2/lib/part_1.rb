def partition(arr,num)
  list_1 = []
  list_2 = []
  
  arr.each {|e| e >=  num ? list_2 << e : list_1 << e }
  return list_1 , list_2
  
end

def merge(hash_1,hash_2)
  result = {}
  hash_1.each {|k,v| result[k] = v}
  hash_2.each {|k,v| result[k] = v}
  result
end

def censor(str,arr)
  list_str = str.split(" ")
  result_list = []

  list_str.each do |ele|
    clean_str = ele.downcase
    if arr.include? clean_str
      result_list << censor_word(ele)
    else
      result_list << ele
    end
  end
  result_list.join(" ")
end

def censor_word(str)
  vowels = "aeiouAEIOU"
  result_str = ""
  str.split("").each do |letter|
    if vowels.include? letter
      result_str += '*' 
    else
      result_str += letter
    end
  end
  result_str
end


def power_of_two?(num)
  total = 1
  if num == 1 
    return true
  end

  while num > total
    total *= 2
    
    if num == total
      return true
    
    end
  end
  false
end



