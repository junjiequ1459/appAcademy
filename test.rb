result = Array.new(3) { [] }
i = 0
j = 0

while i < 3
  while j < 3
    result[i] << "hi"
    j += 1
  end
  i += 1
  j = 0
end

p result
