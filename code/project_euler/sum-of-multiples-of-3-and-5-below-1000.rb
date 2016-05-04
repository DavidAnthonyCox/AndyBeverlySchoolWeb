# Multiples of 3 and 5
#
# If we list all of the natural numbers below 10 that are multiples of
# 3 and 5, we get 3,5,6 and 9. THe sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

class Multiples

  def multiples
    numbers = Array(1..999)
    multiples = Array.new
    for i in numbers
      if i%3 == 0 or i%5 == 0
        multiples.push(i)
      end
    end
    multiples
  end

  def sumMultiples(multiples)
    total = 0
    multiples.each { |i| total+= i }
    puts(total)
  end

end

multiples = Multiples.new
multiples.sumMultiples(multiples.multiples)
