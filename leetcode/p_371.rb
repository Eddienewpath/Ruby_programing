############<----- Bit manipulation summary ---->##############

# <----- binary ---->
#  n      n    n-1   n&(n-1)
#  --   ----   ----   -------
#  0   0000   0111    0000 *
#  1   0001   0000    0000 * x
#  2   0010   0001    0000 *
#  3   0011   0010    0010
#  4   0100   0011    0000 * x 0100 & 0101 => 0100, 1000 & 0101 => 0000
#  5   0101   0100    0100
#  6   0110   0101    0100
#  7   0111   0110    0110
#  8   1000   0111    0000 *
#  9   1001   1000    1000
# 10   1010   1001    1000
# 11   1011   1010    1010
# 12   1100   1011    1000
# 13   1101   1100    1100
# 14   1110   1101    1100
# 15   1111   1110    1110

#You can see that only 0 and the powers of two (1, 2, 4 and 8)
#result in a 0000/false bit pattern, all others are non-zero or true.
#any numbers that are not equal to 0 are viewed as true in c

# bit manipulation practices.
# p_1: count number of 1's in bit representation of given number n.
def count_1s n
  count = 0
  while n > 0
    # tricks: if n&(n-1) == 0(decimal form), n is 0 or power of 2.
    n = n&(n-1)
    count += 1
  end
  count
end

#p count_1s 19

# hex : 0x55555555 (32 bit integer) => b-2: 01010101....0101 (alternating)
# 1's at even positions (starting from pos 0).
# if number is power of 4, the number must be power of 2 and 1's in b-2 form
# must be at even postion so that when & with 0x55555555 wil get true result.
def power_of_four? n
  ((n&(n-1))== 0) && (n&0x55555555) != 0
end

#p power_of_four? 16

# Sum of Two Integers
# ^: save the distinct bits and remove the same.(ignores the carry-out)
# &: use this operator to record carry-out at certain positon.(consider carryout)
# & and << combine will move the carry out to the next bit and do the xor.
# shift left meaning moving carry-out to the next bit.
# xor the shifted carryout to the current pos.
# [ans: a+b = 0101]

# a = 0010, b = 0011
# a: a ^ b = 0001, b: a&b = 0010 << 1 => 0100
# a: a ^ b = [0101], b: a&b = 0000 << 1 => 0000
def sum_of_2int a, b
  (b == 0) ? a : (sum_of_2int (a^b),((a&b)<< 1))
end

#p sum_of_2int 10,3

# missing number.
# Given an array containing n distinct numbers taken from 0, 1, 2, ..., n,
# find the one that is missing from the array.

def missing_num a
  for i in 0...a.length
    return i if (i ^ a[i] != 0)
  end
end

p missing_num [0,1,2,4] 
