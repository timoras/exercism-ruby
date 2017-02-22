class Hamming
    def self.compute (seq1, seq2)
        if seq1.length != seq2.length 
            raise ArgumentError
        end

        if seq1 == seq2
            0
        else
            diff = 0
            for pos in 0..seq1.length - 1
                if seq1[pos] != seq2[pos]
                    diff = diff + 1
                end            
            end
            diff
        end
        
    end
end