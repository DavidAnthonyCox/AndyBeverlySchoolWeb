def prime? x
  (2..x-1).each { |y| return false if x % y == 0 }
  true
end
 
x = 10_001 
n = 3 
counter = 1 
 
while true
  counter += 1 if prime? n
  break  if counter == x
  n += 2
end
 
puts "The answer is #{n}."