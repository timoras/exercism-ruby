class Squares
    def initialize(n)
        @n = n
    end
    
    def square_of_sum
        sum = [*1..@n].inject(0, &:+)        
        sum * sum
    end

    def sum_of_squares
        [*1..@n].inject(0) {|sum, i|  sum + (i * i) }    
    end
    
    def difference
        square_of_sum - sum_of_squares
    end
end
