class Pangram
    def self.pangram? (phrase)
        p = phrase.dup.downcase
        [*?a..?z].each { |x| return false unless p.include?(x) }
        true
    end
end


module BookKeeping
    VERSION = 4
end
