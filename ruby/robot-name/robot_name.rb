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
  def rnd_chars
    ('A'.ord + rand(26)).chr << ('A'.ord + rand(26)).chr
  end

  def rnd_digit
    ('0'.ord + rand(10)).chr << ('0'.ord + rand(10)).chr << ('0'.ord + rand(10)).chr
    
  end

  def rnd_robot_name 
    new_name = "" << rnd_chars << rnd_digit
    if @@used_name.include? (new_name)
      new_name = rnd_robot_name
    end        
    @@used_name << new_name
    new_name
  end
end

module BookKeeping
  VERSION = 2
end