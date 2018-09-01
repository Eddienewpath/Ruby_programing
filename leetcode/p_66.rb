=begin
Input: [4,3,2,1]
Output: [4,3,2,2]
Explanation: The array represents the integer 4321.
=end
# case : [9] [9,9] [9,9,9]
# only add 1 once, multiple carry could happen for case at array only have 9 as items.

def plus_one(digits)
  carry = 0
  if (digits[-1] + 1) >= 10
    digits[-1] = (digits[-1] + 1) % 10
    carry = 1
    ((digits.size- 2).downto 0).each do |i|
      if (digits[i] + carry) < 10
        digits[i] = digits[i] + carry
        carry = 0
        break
      else
        digits[i] = (digits[i] + carry) % 10
        carry = 1
      end
    end
  else
    digits[-1] = digits[-1] + 1
  end
  digits.insert(0,carry) if carry == 1
  digits
end

# solutions from others. this is a good ruby way of doing.
# short version using built-in functions
# but not good way to learn algorithm.
def plus_one_short digits
  # int.next return the next int  Ex: 2 -> 3
  # int.digits return an array of int digits
  # array.join return an string of array digits concatenation.
  # string.to_i return an int
  # array.reverse return an reversed array.
   digits.join.to_i.next.digits.reverse
end
#p plus_one_short [9,9,9]

# smart thinking: dealing with plus one instead of add one to the last element, and then
# traverse reversely from the second the last, we can assign carry = 1 just like carry in from
# somewhere. this way we do not have to do the adding seperately.

# Ruby: can use array.reverse_each {} to traverses self in reverse order.
def plus_one_good digits
  # can assign variabe using comma.
  sum, carry = [], 1
  digits.reverse_each do |digit|
    if carry.nonzero? # .nonzero method is new.
      value = digit + carry
      # can assign quotient and remainder using divmod method : q,r = int.divmod int.
      carry, value = value.divmod(10)
    else
      value = digit
    end
    sum.insert(0, value)
  end
  # can also use ary.unshift(1) to replace insert. more ruby way.
  sum.insert(0, carry) if carry.nonzero?
  sum
end
