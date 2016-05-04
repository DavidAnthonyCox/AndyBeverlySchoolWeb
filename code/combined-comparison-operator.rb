books = ["Demon Haunted World","A Short History of Nearly Everything","Basic Economics","The Rational Optimist"]

books.sort! {|a, b| b <=> a} #{|a, b| b.length <=> a.length}

puts books