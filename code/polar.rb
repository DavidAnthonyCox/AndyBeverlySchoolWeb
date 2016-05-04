def cartesian(magnitude, angle)
  [magnitude * Math.cos(angle), magnitude * Math.sin(angle)]
end

def polar(x,y)
  return Math.hypot(y,x), Math.atan2(y,x)
end

x = 1
y = 1
distance,theta = polar(x,y)
x,y = cartesian(distance,theta)

puts polar(1,1)