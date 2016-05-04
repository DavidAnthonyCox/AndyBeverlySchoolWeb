@triangle_number = 441
@factors = []
@right_of_tree = []
@left_of_tree = []

def find_triangle_number_with_500_factors
  natural_number = 1000
  while !over_500_factors?
    @factors = []
    @right_of_tree = []
    @left_of_tree = []
    triangle_number_generator(natural_number)
    find_factors_with_a_factor_tree
    natural_number += 1
  end
  p @triangle_number
end

def triangle_number_generator(natural_number)
  @triangle_number = natural_number*(natural_number+1) / 2
end

def find_factors_with_a_factor_tree
  create_prime_factor_tree(@triangle_number)
  find_combinations_in_left_of_tree
end

def find_combinations_in_left_of_tree
  last_prime_factor = @right_of_tree.last
  @left_of_tree.push(last_prime_factor)
  (1..@left_of_tree.length).each do |combination_size|
    cxget_combinations(@left_of_tree, combination_size)
    combinations.each do |arr|
      @factors << arr.inject(:*)
    end
  end
end

def get_combinations(arr, combination_size)
  arr.combination(combination_size).to_a.uniq
end

def create_prime_factor_tree(number)
  until number <= 1
    factor = get_initial_divisor(number)
    if factor
      @right_of_tree.push(number / factor)
      @left_of_tree.push(factor)
      number = number / factor  
    else 
      break
    end
  end 
end

def get_initial_divisor(number)
  2.upto(number / 2) do |possible_factor|
    if number % possible_factor == 0
      return possible_factor
      break
    end
  end
  return nil
end


def over_500_factors?
  return true if @factors.size + @right_of_tree.size >= 498
end

Benchmark.bm do |bm|
  bm.report { find_triangle_number_with_500_factors}
end