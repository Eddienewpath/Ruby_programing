  #echo
  def echo (a)
    a.to_s
  end
  #shout
  def shout (a)
    a.to_s.upcase
  end
  #repeat takes two params
  def repeat (a, b = 2)
    ((a+" ")*b).strip
  end

  def start_of_word (a, b)
    a[0...b]
  end

  def first_word (a)
    a.split.first
  end
  #
  def titleize (a)
    x = []
    x = a.split
    str = ""
    little = ["a","an", "the", "and", "but", "or", "for", "nor", "of", "over"]
    for i in (0...x.length)
    if(!little.include?(x[i]))
      str += (x[i].capitalize + " ")
    elsif(little.include?(x[i]) && i == 0)
      str += (x[i].capitalize + " ")
    else
        str += (x[i]+ " ")
    end
  end
  str.strip
end
