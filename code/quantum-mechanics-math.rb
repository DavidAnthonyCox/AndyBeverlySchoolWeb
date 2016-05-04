require 'matrix'
# abstract vector space

# |a> + |b> = |c>

# complex conjugate vector space

# <a| => (a1* a2*)


# <a|b> = (b1* b2*)(a1 a2) = b1* a1 + b2* a2

# <a|a> = a1* a1 + a2* a2

# i = Math.sqrt(-1)

electron_up_spin   = Vector[1,0]
# [:"electron_up_spin  |+>"  => "[1,0]"]
electron_down_spin = Vector[0,1]
# [:"electron_down_spin  |->"  => "[0,1]"]

puts (electron_up_spin * -1)
puts (electron_down_spin * -1)
# puts i

# a+ |+> + a- |->

# a+* a+ = P+
# a-* a- = P-

# [a+ a-]

# -|+> != |->
#  |+> != |->

 # <+|+> = 1
 # <-|-> = 1
 
 # puts <+|+>

# orthaganol vectors

# <+|-> = 0
# <-|+> = 0

# matrix
# <b|a> = <a|b>*
# <b|M|a> = <a|M|b>*
# <a|M|a> = <a|M|a>*
