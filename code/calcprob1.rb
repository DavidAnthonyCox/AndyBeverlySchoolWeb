def R(x)
  R.each {|x| R(Math.sqrt(x * 3))}
end

puts R(4)
puts R(6)