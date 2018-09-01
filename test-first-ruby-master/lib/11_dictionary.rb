class Dictionary
  # TODO: your code goes here!
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add (a)
    if(a.is_a?(String))
      @entries[a] = nil
    else
      a.each {|k,v| @entries[k] = v}
    end
  end

  def keywords
    @entries.keys.sort
  end

  def include? (a)
    @entries.keys.include?(a)
  end

  def find (a)
    res = {}
    if (@entries.length == 0)
      res
    elsif(@entries.include?(a))
      res[a] = @entries[a]
    else
      @entries.keys.each do |s|
        if(s[0...a.length] == a)
          res[s] = @entries[s]
        end
      end
    end
    res
  end

  def printable
    str = ""
    @entries.keys.sort.each do |s|
      str += "\[#{s}\] \"#{@entries[s]}\"" + "\n"
    end
    str[0...str.length-1]
  end
end
