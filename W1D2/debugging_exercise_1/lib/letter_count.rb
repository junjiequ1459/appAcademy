# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a string and char as args.
# The method should return the number of times that the char appears in the string.

require "byebug"

def letter_count(string, char)
  clean_str = string.downcase
  count = 0
  clean_str.each_char do |c|
    count += 1 if c == char
  end
  count
end

p letter_count("hello", "h")
