# Ax = b

require 'matrix'

# linear combination of columns  .. 

# # x=1 
# # y=2

# x[2,-1]+y[-1,2]=[0,3]

# or

# x [ 2] + y[-1] = [0]
#   [-1]    [ 2]   [3]

# version 1 of linear combination of columns
x=1
y=2
myvec1_row1 = Vector[2]
myvec1_row2 = Vector[-1]
myvec2_row1 = Vector[-1]
myvec2_row2 = Vector[2]
puts (x * myvec1_row1) + (y * myvec2_row1)
puts (x * myvec1_row2) + (y * myvec2_row2)
# answer = [0] like above
#          [3] 

# version 2 of linear combination of columns
x=1
y=2
myvec_col1 = Vector[2,-1]
myvec_col2 = Vector[-1,2]
myvec_col3 = Vector[1,0,-1]
myvec_col4 = Vector[0,-1,1]
puts (x * myvec_col1) + (y * myvec_col2)
# answer = [0,3] like above

# Vector[1,2,3,4,5]
# myvec1_row1 = Vector[2]
# myvec1_row2 = Vector[-1]
# myvec2_row1 = Vector[-1]
# myvec2_row2 = Vector[2]
# x1=puts 1 * myvec1_row1 
# x2=puts 1 * myvec1_row2
# y1=puts 2 * myvec1_row1 
# y2=puts 2 * myvec1_row2
# # x=puts x1*x2
# # y=puts y1*y2
# # puts x + y
puts myvec1_row1 / 0.001
puts myvec1_row2 / 0.001
puts myvec2_row1 / 0.001
puts myvec2_row2 / 0.001

puts myvec_col1 / 0.001
puts myvec_col2 / 0.001

puts (myvec_col1 / 0.001) - (myvec_col2 / 0.001)

puts (myvec_col1 / 0.01) - (myvec_col2 / 0.01)

puts (myvec_col1 / 0.5) - (myvec_col2 / 0.5)

puts (myvec_col1) - (myvec_col2)

puts (x * myvec_col1) - (y * myvec_col2)

puts (myvec_col1 / 0.001) + (myvec_col2 / 0.001)

puts (myvec_col1 / 0.01) + (myvec_col2 / 0.01)

puts (myvec_col1 / 0.5) + (myvec_col2 / 0.5)

puts (myvec_col1 * Math.sqrt(21)) + (myvec_col2 * Math.sqrt(21))

puts (myvec_col1 * Math.sqrt(21)) - (myvec_col2 * Math.sqrt(21))

puts (myvec_col1 / Math.sqrt(21)) + (myvec_col2 / Math.sqrt(21))

puts (myvec_col1 / Math.sqrt(21)) - (myvec_col2 / Math.sqrt(21))

puts (myvec_col1 / Math.sqrt(1)) + (myvec_col2 / Math.sqrt(1))

puts (myvec_col1 / Math.sqrt(1)) - (myvec_col2 / Math.sqrt(1))

puts (myvec_col1 * Math.sqrt(1)) + (myvec_col2 * Math.sqrt(1))

puts (myvec_col1 * Math.sqrt(1)) - (myvec_col2 * Math.sqrt(1))

# complex math notes for future math problems
# a complex number
cc = Complex(3, 4)

# when printed, it's shown as (‹a›+‹b› i)
p cc                            # (3+4i)

# input comlex number in polar form. The input is (length, ‹angle in radians›)
p Complex.polar(1, Math::PI)    # ⇒ (-1.0+1.2246467991473532e-16i)

p cc.real                    # ⇒ 3.0
p cc.imag                    # ⇒ 4.0

# length of a Complex number. That is, Sqrt[ i^2 + j^2]
p Complex(3, 4).abs                    # ⇒ 5.0

# Complex number addition. (same as vector addition)
p Complex(2, 3) + Complex(4, 5)        # ⇒ (6+8i)

# multiplication of complex numbers
p Complex(1, 0) * Complex(0, 1)        # ⇒ (0+1i)

# scalar multiplication. That is, scale it.
p Complex(3, 4) * 2             # ⇒ (6+8i)

# adding a scalar adds to the real part
p Complex(3, 4) + 1             # ⇒ (4+4i)

z1 = Complex(0, 1)

# get length
p z1.abs                        # ⇒ 1.0

# get the angle. return in radians
p z1.angle                      # ⇒ 1.5707963267948966

# get polar coordinates. Returns a array [length, angle].
p z1.polar                      # ⇒ [1, 1.5707963267948966]

# polar to rectangular. Input is (length, ‹angle in radians›). Returns a complex number
p Complex.polar(1, Math::PI)   # ⇒ (-1.0+1.2246467991473532e-16i) really is just (-1+0i)

# constant π
p Math::PI                       # ⇒ 3.141592653589793

# constant e
p Math::E                       # ⇒ 2.718281828459045

#more linear algebra type math practice with complex numbers and larger matrices

puts (myvec_col1 * Math::PI) + (myvec_col2 * Math::PI)

puts (myvec_col1 * Math::PI) - (myvec_col2 * Math::PI)

puts (myvec_col3 * Math::PI) + (myvec_col4 * Math::PI)

puts (myvec_col3 * Math::PI) - (myvec_col4 * Math::PI)

puts (myvec_col1 * Complex(3,4)) + (myvec_col2 * Complex(3,4))

puts (myvec_col1 * Complex(3,4)) - (myvec_col2 * Complex(3,4))

puts (myvec_col3 * Complex(3,4)) + (myvec_col4 * Complex(3,4))

puts (myvec_col3 * Complex(3,4)) - (myvec_col4 * Complex(3,4))

puts (myvec_col1 * Math::E) + (myvec_col2 * Math::E)

puts (myvec_col1 * Math::E) - (myvec_col2 * Math::E)

puts (myvec_col3 * Math::E) + (myvec_col4 * Math::E)

puts (myvec_col3 * Math::E) - (myvec_col4 * Math::E)

puts (x * myvec_col1) + (myvec_col2 - myvec_col1)

puts (x * myvec_col1) + ((myvec_col2 - myvec_col1) / Math::PI)

puts ((y**10) * myvec_col1) + ((x**2) * myvec_col2)

puts ((y**10) * myvec_col3) + ((x**2) * myvec_col4)

puts (((y**10) * myvec_col1) / Math::PI) + (((x**2) * myvec_col2) / Math::PI)

puts (((y**10) * myvec_col3) / Math::PI) + (((x**2) * myvec_col4) / Math::PI)

