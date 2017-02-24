class Complement
    def self.of_dna(dna)
        if (dna=~/^[GCTA]+$/)
            dna.tr("GCTA", "CGAU")
        else
            "" 
        end        
    end
    
end