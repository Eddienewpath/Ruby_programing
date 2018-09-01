def reverser
  arr = ""
  #getting the string from the default block
  str = yield
  str.split.each do |v|
  arr = arr + v.reverse + " "
  end
  arr.strip
end

# default value set to 1
def adder (i = 1)
  val = yield
  val + i
end

def repeater(a = 1)
  for i in (0...a) do
    yield
  end
end
