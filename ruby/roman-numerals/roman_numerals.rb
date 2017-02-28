class Fixnum
    def to_roman    
        roman_substractive_form(roman_additive_form)
    end

    private 
    def roman_additive_form

        number_to_convert = self.to_i
        literals = {
            1000=>"M",
            500=>"D",
            100=>"C",
            50=>"L",
            10=>"X", 
            5=>"V", 
            1=>"I"}

        roman = "" 
        literals.each{ |key, value|
            if number_to_convert >= key
                repeats = number_to_convert / key
                roman += value * repeats
                number_to_convert -= (repeats * key)
            end
        }             

        roman
    end
    def roman_substractive_form (roman)
        substitutes = {
            "DCCCC" => "CM",
            "CCCC" => "CD",
            "LXXXX" => "XC",
            "XXXX" => "XL",
            "VIIII" => "IX",
            "IIII" => "IV"
        }
        
        substitutes.each{|key, value|
            roman = roman.gsub(key, value)
        }             

        roman
    end
    

end


module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
