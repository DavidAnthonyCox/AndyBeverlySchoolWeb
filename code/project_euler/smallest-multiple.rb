# def prime? x
#   (2..x-1).each { |y| return false if x % y == 0 }
#   true
# end
 
# def increment
#   a = 1
#   (1..20).each { |x| a*= x if prime? x }
#   a
# end
 
# def no_remainder? x 
#   (1..20).each { |y| return false if x % y != 0 }
#   true
# end
 
# increment = increment
# x = increment
# try_number = 1
 
# while true
#   if no_remainder? x
#     puts "The smallest number is #{x}"
#     break
#   end
#   try_number += 1
#   x = try_number * increment 
# end

num = 2520
until (1..20).all? {|x| num % x == 0}
  num += 1
end
puts "#{num}" 