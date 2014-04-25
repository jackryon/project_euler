class Euler2Solver

  # solve: sum of even fibonacci values < 4,000,000

  def give_me_answer
    @fibonacci_vals = pack_fibonacci_array
    @even_fibonacci_vals = weed_out_odd_vals @fibonacci_vals
    puts "evens are #{ @even_fibonacci_vals.each{|n| puts n } }"
    @even_fibonacci_vals.inject(0) {|sum, element| sum + element }
  end


  private


    def weed_out_odd_vals collection
      evens = []
      collection.each_with_index {|val, i| evens << collection[i] if collection[i] % 2 == 0 }
      evens
    end


    def pack_fibonacci_array
      f_vals = [1, 2]
      while f_vals.last < max_val
        f_vals << f_vals.last + f_vals[f_vals.count - 2]
      end
      f_vals
    end


    def max_val
      4000000
    end

end


solver = Euler2Solver.new
answer = solver.give_me_answer
puts "euler 2 solver says answer is: #{answer}"