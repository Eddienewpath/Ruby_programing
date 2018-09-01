# Array sybtax
a = [9,2,3,4,1]
b = ["sam", 'jame', 2, "max", "jill", 45]
#combine the two array including the dupilicates.
print (a + b).join(" "), "\n"
#-1 circular array the last item in the array.
print a[2], " ", b[2]," ", b[-1], "\n"
#this sort does not change the order inside the array.
print a.sort.join(" "), "\n"
#insert new item into the end of the array.
a << 11 << 18 << "hi"
print "A: ", a.join(" "), "\n"
b << 1 << 4 << "alex"
print "B: ", b.join(" "), "\n"
#pop the last item off the array
print "pop: ", b.pop,"\n"
#delete the first item in the array
print "shift: ", b.shift, "\n"
print "shift2: ", b.shift,"\n"
print "C: ", b.join(" "), "\n"
b.delete_at(2)
b.delete("max")
print "D: ", b.join(" "), "\n","\n","\n"

#hash has_key
z = {"mike" => 75, "bill" => 18, "alice" => 32}
#this will add key-value to the end of the hash array
z["joe"] = 44
print z, "\n"
print z["bill"], " ", z["joe"], " ", z["smith"], "\n"
#return true if the key is in the hash array.
print z.has_key?("mike"), " ", z.has_key?("jones"), "\n\n\n"

#string
a = 17;
print "a = #{a}\n"
print "a = #{a}\n"
#create multiple long strings
b = <<ENDER
this is a long string you can
create a multiple lines string like this
and a = #{a}.
ENDER

print "\n", b, "\n"
#or
print "this is a long string you can\ncreate a multiple lines string like this\nand a = #{a}\n\n\n"
# variable and expressions
a = 10
b = 3 * a + 2
printf("%d %d\n", a,b);
c = [5,4,10]
d = [a] + c
print "#{a} #{b}, [#{c.join(" ")}], [#{d.join(" ")}]\n"

b = "A string"
c = "another string"
print b + " and " + c + "\n\n\n"

#input output using gets.chomp, chomp add a line break.
print "please enter a past tense verb: "
#verb = gets.chomp
print "please enter a noun: "
#noun = gets.chomp
print "please enter a proper noun: "
#prop_noun = gets.chomp
print "please enter an adverb: "
#adv = gets.chomp
#print "#{prop_noun} got a #{noun} and \n#{verb} #{adv} around the block.\n"
#gets.to_f meaning converting numbers into float
print "#{3.to_f}\n"
s = "hi there. how are you?"
#[n,l] n is the starting position, l is the length of the substring.
#[..]or[...] is a range, three dots is exclusive of last pistion.
print "[" + s[4,4] + "]\n"
print "[" + s[6..15] + "]\n"
#print "wow" three times
print "wow" * 3, "\n"
#find the index of the string first appeared.
print s.index("there"), s.index("hi"), s.index("hello"), "\n"
#revese the string.
print s.reverse, "\n\n\n"

#parallel assignment
a,b,c = 8,10,15
print a, b, c, "\n"
#computee three value then assign three value
a,b,c = 40, a+11, a+b+c
print a," ",b," ",c,"\n"
#swap
a,b = b, a
print a," ", b, "\n"

a,b,c = 2,3
print a," ",b,"c= ", c, "\n"
a,b,c = 11,12,13,14,15
print a," ",b,"c= ", c, "\n"

fred = [4,5,6,7]
a,b,c = fred
print a," ",b,"c= ", c, "\n"
