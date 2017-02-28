class Pangram
    def self.pangram? (phrase)
        p = phrase.dup.downcase    
        [*?a..?z].all? { |x| p.include?(x) }
    end
end


module BookKeeping
    VERSION = 4
end
