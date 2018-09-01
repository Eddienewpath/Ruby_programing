class Array
  def sum
    s = 0
    if self.length == 0
      0
    else
      self.each {|x| s += x}
    end
    s
  end

  def square
    if self.length == 0
      self
    else
      #return a new array
      self.map{|x| x*x}
    end
  end

  def square!
    arr = square
    self.clear
    arr.each do|x|
    self.push(x)
  end
  end
end
