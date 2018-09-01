class Book
  # TODO: your code goes here!
   attr_reader :title
#title= setter method
   def title= (nm)
    @title = titlize(nm)
   end

  def titlize (t)
    x = []
    x = t.split
    str = ""
    little = ["a","an", "the", "and", "to", "of", "in"]
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
end
