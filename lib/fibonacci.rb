class Fibonacci
    
    # def self.fibonacci_interative_using_pipe(stop_at)
    #     h = Hash.new
    #     h = [0 => 0, 1 => 1]
    #     (1..stop_at).each do |id|
    #         h[id] = h[id - 1] + hd[id - 2]
    #         puts h[id]
    #     end
    # end
    
    def self.fibonacci_interative_first_n(stop_at)
        exceptions = {0 => [], 1 => [0], 2 => [0,1]}
        return exceptions[stop_at] if exceptions[stop_at] 

        fib = [0,1]
        (stop_at - 2).times do
            fib << fib[-2] + fib[-1]
        end
        fib
    end

    def self.fibonacci_recursive(input)
        if input == 0 
            return 0
        elsif input == 1 
        return 1
        else 
            fibonacci_recursive(input - 2) + fibonacci_recursive(input - 1)
        end
    end

    def self.fibonacci_recursive_first_n(stop_at)
        (0..(stop_at - 1)).map do |index|
            fibonacci_recursive(index)
        end
    end
end

# puts Fibonacci.fibonacci_interative_first_n(5).inspect
# puts Fibonacci.fibonacci_recursive_first_n(5).inspect
# puts Fibonacci.fibonacci_interative_using_pipe(21).inspect
