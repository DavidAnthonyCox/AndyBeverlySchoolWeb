# def factorial(n)
#   if n < 1
#     raise "argument must be > 0"
#   elsif n == 1
#     1
#   else
#     n * factorial(n - 1)
#   end
# end

# puts factorial(1)
# puts factorial(5)
# puts factorial(8)

def factorial(n)
  raise "argument must be > 0" if n < 1
  return 1 if n== 1
  n * factorial(n-1)
end

puts factorial(1)
puts factorial(5)
puts factorial(8)