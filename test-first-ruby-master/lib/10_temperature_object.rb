class Temperature
  # TODO: your code goes here!
  attr_accessor :f, :c
  def initialize (hash)
    if hash[:f]
      @f = hash[:f]
    end

    if hash[:c]
      @c = hash[:c]
    end
  end

  def self.from_celsius (c)
    Temperature.new(:c => c)
  end

  def self.from_fahrenheit(f)
    Temperature.new(:f => f)
  end

  def in_fahrenheit
    if( @c != nil)
      9*@c/5.0 + 32.0
    else
      @f
    end
  end

  # convert fahrenheit to celsius
  def in_celsius
    if(@f != nil)
      (@f - 32.0)*5.0/9.0
    else
      @c
    end
  end

  # convert celsius to fahrenheit.
  def self.ctof c
    9*c/5.0 + 32
  end

  # convert fahrenheit to celsius
  def self.ftoc f
    (f - 32)*5/9
  end
end

class Celsius < Temperature
  def initialize (c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end
