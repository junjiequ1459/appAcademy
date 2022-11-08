def all_words_capitalized?(arr)
  arr.all? { |ele| ele[0] == ele[0].upcase && ele[1..-1] == ele[1..-1].downcase }
end

def no_valid_url?(arr)
  url = [".com", ".net", ".io", ".org"]
  url.all? { |ele2| arr.none? { |ele| ele.include? ele2 } }
end

#'.com', '.net', '.io', or '.org'"

p no_valid_url?(["appacademy.biz", "awebsite.me"])
p no_valid_url?(["appacademy.io", "sennacy.com", "heyprogrammers.org"])

def any_passing_students?(arr)
  arr.any? { |ele| (ele[:grades].reduce { |k, v| k += v }) / ele[:grades].length > 75 }
end

students_1 = [
  { name: "Alvin", grades: [70, 50, 75] },
  { name: "Warlin", grades: [80, 99, 95] },
  { name: "Vlad", grades: [100] },
]
