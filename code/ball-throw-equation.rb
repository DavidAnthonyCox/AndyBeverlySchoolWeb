def numeric_solve(dt,v,a)
  t = 0
  p = 0
  max = 0
  while p >= 0
    v += a * dt
    p += v * dt
    t += dt
    max = p if p > max
  end
  return t,max
end

puts numeric_solve(0.001,19.6,-9.8)