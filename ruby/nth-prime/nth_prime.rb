class Prime

  def self.nth(n)
    fail ArgumentError unless n > 0
    p = PrimeCheker.new 
      a = natural_numbers()
          .lazy()
          .select {|x| p.prime?(x)}        
          .take(n)
          .to_a()
          .last()       
  end
  
  private         
  def self.natural_numbers()
    Enumerator.new do |y|
      a = 2
      loop do
        y << a
        a += 1
      end
    end
  end

end

class PrimeCheker
    def prime?(n)
        !(2..(Math.sqrt(n).to_i)).any? do |x| 
            n % x == 0
        end
    end
end

module BookKeeping
    VERSION = 1
end

