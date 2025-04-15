def collatz(n)
  return 0 if n == 1

  return 1 + collatz(n / 2) if n.even?

  1 + collatz(3 * n + 1) if n.odd?
end

puts collatz(1)
puts collatz(2)
puts collatz(3)
puts collatz(4)
puts collatz(5)
puts collatz(6)
puts collatz(7)
puts collatz(8)
puts collatz(15)
puts collatz(27)
puts collatz(50)
