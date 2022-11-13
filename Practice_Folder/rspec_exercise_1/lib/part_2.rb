def hipsterfy(word)
  result = ""
  vowels = "aeiouAEIOU"
  for i in (word.length - 1).downto(0)
    if vowels.include? word[i]
      p i
      return result = word[0...i] + word[i + 1..-1]
    end
  end
  word
end

def vowel_counts(str)
  vowels = "aeiouAEIOU"
  clean_str = str.downcase
  hash = {}
  clean_str.each_char do |e|
    if vowels.include? e
      if hash[e]
        hash[e] += 1
      else
        hash[e] = 1
      end
    end
  end
  hash
end

p vowel_counts("code bootcamp")

def caesar_cipher(str, num)
  alphabet = [*"a".."z"]
  result = []
  str.each_char do |e|
    if alphabet.include? e
      result << alphabet[(alphabet.index(e) + num) % 26]
    else
      result << e
    end
  end
  result.join("")
end
