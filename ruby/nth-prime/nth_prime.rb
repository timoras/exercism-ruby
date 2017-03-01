class Prime

    def self.nth(n)
        throw ArgumentError unless n > 0
        p = PrimeCheker.new 
        a = natural_numbers()
            .lazy            
            .select {|x| p.is_prime?(x)}        
            .take(n)
            .to_a
            .last        
    end

    private         
    def self.natural_numbers
        Enumerator.new do |y|
            a = 2
            loop do
                y << a
                a = a +1
            end
        end     
    end
end

class PrimeCheker
    def is_prime?(n)
        not (2..(Math.sqrt(n).to_i)).any? do |x| 
            n % x == 0
        end
    end
end

module BookKeeping
    VERSION = 1
end

