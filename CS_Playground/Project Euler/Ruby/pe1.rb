sum = 0
i = 0

def multiples(limit)
  sum = 0

  while i < 1000 do
    if i % 3 == 0 || i % 5 = 0
      sum = sum + i
    end
  end

  return sum
end

sum = multiples(1000)

puts "Sum of multiples of 3 and 5:"
puts "Answer: " + sum
