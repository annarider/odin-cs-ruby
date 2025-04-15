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

def fibs_rec(n)
  puts 'This was printed recursively'

  if n.zero?
    return [0]
  elsif n == 1
    return [0, 1]
  else
    result = fibs_rec(n - 1)
    return result << result[-1] + result[-2]
  end
end


print fibs(8) # [0, 1, 1, 2, 3, 5, 8, 13]
print fibs_rec(8) # [0, 1, 1, 2, 3, 5, 8, 13]
