# define recursion:
# base: x, xx n<=2
# recursive: xyx n>2

# baabaab
# return count some problem change to boolean version. 
def check_palindromes str
  count = 0
  if str.length <= 1
    return count = 1
    # if the first char and the last char is the same we go to the next substring.
    # in ruby the short cut for last is -1
  elsif (str.length == 2) && (str[0] == str[-1])
    return count = 1
  elsif (str.length > 2) && (str[0] == str[-1])
    count = (check_palindromes str[1...-1]) + 1
    if count == 0
      return -1
    else
      return count
    end
  else
    return -1
  end
end

#p check_palindromes "bbabb"

=begin
1: count = 0, bbabbb-> babb
2: count = 0, babb -> ab
3: count = 0, ab
=end


# this is not right. fix this.
#count number of palindromes in a string.
#Ex: baabaab ->
def num_of_palindromes str
  total = 0
for i in 0...str.length do
  if(check_palindromes (str[i...str.length])) > 0
    total += check_palindromes (str[i...str.length])
  end
end
total
end

p num_of_palindromes "abbaeae"
