def fibs(n)
  result = []
  n.times do |i|
    if i < 2
      result << i
    else
      result << result[(i - 1)] + result[(i - 2)] 
    end
  end
  result
end

puts fibs(8) # [0, 1, 1, 2, 3, 5, 8, 13]
