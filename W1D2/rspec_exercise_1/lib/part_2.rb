def hipsterfy(word)
  vowels = "aeiou"
  for i in (word.length - 1).downto(0)
    if vowels.include? word[i]
      return word[0...i] + word[i + 1..-1]
    end
  end
  word
end

def vowel_counts(str)
  clean_str = str.downcase
  vowels = "aeiou"
  obj = {}
  for i in 0...str.length
    if vowels.include? clean_str[i]
      if obj[clean_str[i]]
        obj[clean_str[i]] += 1
      else
        obj[clean_str[i]] = 1
      end
    end
  end
  obj
end

def caesar_cipher(str, num)
  result_str = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  for i in 0...str.length
    if alphabet.include? str[i]
      result_str += alphabet[((alphabet.index(str[i]) + num) % 26)]
    else
      result_str += str[i]
    end
  end
  result_str
end

p vowel_counts("WILLIAMSBURG bridge")
p caesar_cipher("apple", 1) #=> bqqmf
p hipsterfy("swimming")
