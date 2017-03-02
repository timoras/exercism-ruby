class Robot
    @@used_name = []

    def initialize
        @name = rnd_robot_name
    end
    
    def name
        @name
    end

    def reset
        @name = rnd_robot_name
    end


    private 
    def rnd_char
        (65 + rand(26)).chr
    end

    def rnd_digit
        rand(1000).to_s.rjust(3, "0")
    end

    def rnd_robot_name 
        new_name = "" << rnd_char << rnd_char << rnd_digit
        if @@used_name.include? (new_name)
            new_name = rnd_robot_name
        end        
        @@used_name << new_name
        new_name
    end
end


module BookKeeping
    VERSION = 2x
end