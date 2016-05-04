x = 2_000_000
 
def prime? x
  (2...x).each { |i| return false if x % i == 0 }
  true
end
 
def primes upto
  a = []
  (2..upto).each { |i| a << i if prime? i ; puts i }
  a
end
 
def array_sum a
  sum = 0
  a.each { |i| sum += i }
  sum
end
 
puts "#{array_sum primes x}"