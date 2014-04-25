# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

max_factor = 20
possible_factors = max_factor.downto(2).to_a
upper_limit = possible_factors.inject(1) {|product, i| product * i}

test_num = 2520
smallest_multiple = catch(:sm_mlt) do
  while test_num < upper_limit do
    possible_factors.each do |pf|
      if test_num % pf != 0
        break
      elsif pf == possible_factors.last
        throw :sm_mlt, test_num
      end
    end
    test_num += 2520
  end
end

puts "smallest_multiple is #{smallest_multiple}"