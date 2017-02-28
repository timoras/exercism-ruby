class Sieve
    def initialize(max)
        @max = max
    end

    def primes
        marked = Array.new
        sieve = [] 
        [*2..@max].each{|x| 
            if not marked.include? x
                marked += (x..@max).step(x).to_a
                sieve << x
            end                
        }
        sieve
    end

    
end

module BookKeeping
    VERSION = 1 # Where the version number matches the one in the test.
end
