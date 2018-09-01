
def titlize (a)
  x = []
  x = a.split
  str = ""
  little = ["a","an", "the", "and", "to", "of", "in"]
  for i in (0...x.length)
  if(!little.include?(x[i]))
    str += (x[i].capitalize! + " ")
  elsif(little.include?(x[i]) && i == 0)
    str += (x[i].capitalize! + " ")
  else
      str += (x[i]+ " ")
  end
end
p str.strip
end

titlize("to information and ")
# return current time
p Time.now
#working same as the above one.
p Time.new
# int variable starts with upper case is a constant cannot be changed once created.
nums = [1,2,3,4,5]
#map block will map each items in the array to do the statement inside the block
new_nums = nums.map{|x| x*2}
print new_nums.join(" ")
puts

#yield keyword will wait for other statement outside of current method block
#to run then go to the statement after the yield keyword.
def printsomething
  puts "what ate yiu doing"
  # this will check if there is a code block can be yield to
  #in order to avoid error.
  yield if block_given?
  puts "I am coding ruby!"
end
#this the syntax to do yield. see alternative way using do end below
printsomething{puts "it looks fun!"}
=begin
printsomething do
puts "it looks fun!"
end
=end

def introduction (name)
  yield(name)
  #Edison will take the jake's place as an argument passed in to |nm|
  #in other word, yield keyword make Edison operate first.
  yield("Edison")
  yield(name)
  yield("amanda")
end
introduction ("jake"){|nm| puts "my name is #{nm}"}

def block_test
  yield
  yield
  puts " got here?"
end
# this is the call to the method.
block_test {puts "runs in this block"}
#block_test {puts "hi, there!"}
