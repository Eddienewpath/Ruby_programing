q,r = 5.divmod 10

ar = [2,3,4,5]
ar.unshift 1
ar.unshift -1,0
# p ar

str ="abcde"
j = str.length - 2

arr = [2,3,4,5]
((arr.length-1).downto 20).each do |x|
   x
end

str = "hello"
#p str[0..2]
#p str
str.each_char {|c|  c }

#p 'c' == nil;

n = 1234
n.digits.reverse.each do |x|
  if true
    #p x
    next
  end
  #p "here"
end

str = [0,0,3]
#p str.join.to_i
str = "ab"
s = "cd"
str = str + s

hash = {3=>2}
hash = hash.invert
nums = [1,2,2,3]
test = Hash.new(0)
nums.each do |n|
  test[n] += 1
end
test.keys.sort_by! do |e|
  -test[e]
end

[].tap do |x|
   p x
end
