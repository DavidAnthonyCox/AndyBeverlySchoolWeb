# our_lamb = lambda {|x,y| puts x + y}
# our_lamb.call(7,6)

def trees
  leaf = lambda{return "I'm blowing in the wind."}
  leaf.call
  
end

puts trees