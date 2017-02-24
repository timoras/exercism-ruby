class Hamming
    def self.compute (seq1, seq2)
        if seq1.length != seq2.length 
            raise ArgumentError
        end

        diff = 0
        seq1.each_char.with_index do |c, i|
            diff += c != seq2[i]            
        end 
               
        diff
    end
end