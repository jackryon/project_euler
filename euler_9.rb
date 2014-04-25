=begin
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2
For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc. 
=end

max_count = 500
triples = []

solution = catch(:trpl) do
  (1..max_count).each do |a|
    (1..max_count).each do |b|
      (1..max_count).each do |c|
        throw(:trpl, a * b * c) if (a + b + c == 1000) && (a ** 2 + b ** 2 == c ** 2)
      end
    end
  end
end

if solution.class == Range
  puts "No solution found in range 1..#{max_count}. Increase max_count!"
else
  puts solution
end