# y = [1,2]
# upto = 4000000

# while y[-2] + y[-1] < upto
# y << y[-2] + y[-1]
# end

# sum = 0
# y.each {|z| sum += z if z.even?}
# puts "The result is #{sum}"


limit = 4000000
start = [1,2]
while start[-2] + start[-1] < limit
  start << start[-2] + start[-1]
end
result = 0
start.each { |x| result += x if x.even? }
end
puts result