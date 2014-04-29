=begin
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
=end

def collatz_sequence_length i, known_sequence_lengths
  length = 0
  while i > 1
    return known_sequence_lengths[i] + length if known_sequence_lengths[i]
    length += 1
    i = i % 2 == 0 ? i / 2 : (3 * i) + 1
  end
  length += 1
end

start_time = Time.now
known_lengths = []
longest_seq = 0
longest_seq_start = 0
1.upto(1000000).each do |test|
  known_lengths[test] = collatz_sequence_length test, known_lengths
  if known_lengths[test] > longest_seq
    longest_seq = known_lengths[test] 
    longest_seq_start = test
  end
end

puts longest_seq
puts longest_seq_start
puts "executed in #{Time.now - start_time} sec"
#puts data.inspect
