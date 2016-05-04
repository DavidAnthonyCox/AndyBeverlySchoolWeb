def palindrome? x
  y = x.to_s
  checks = y.length / 2
  y[0..(checks-1)] == y[-checks..-1].reverse
end
 
def divideable? x
  999.downto(100).each { |y| return true if x % y == 0 && (x / y).to_s.length == 3 }
  false
end
 
999999.downto(100000).each do |y| if palindrome?(y) && divideable?(y)
    puts "The result is #{y}"
    break
  end
end