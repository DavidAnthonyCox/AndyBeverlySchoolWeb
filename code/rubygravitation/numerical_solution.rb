#!/usr/bin/ruby -w

=begin

A numerical model for:

p(0) = 0
p'(0) = v
p''(t) = -a

=end

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

def pretty_print(*a)
   while a.size > 0 do
      printf("%s: %9.6f ",a.shift,a.shift)
   end
   puts ""
end

1.upto(6) do |n|
   # starting time
   st = Time.new
   # think: 10 raised to the -n
   dt = 10.0**-n
   # solve
   t,max = numeric_solve(dt,19.6,-9.8)
   # get elapsed time
   et = Time.new - st
   # compute result error
   error = (1 - (19.6/max)) * 100.0
   pretty_print("dt",dt,"height",max,"error %",error,"runtime",et)
end
