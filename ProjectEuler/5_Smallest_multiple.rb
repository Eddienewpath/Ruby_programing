# What is the smallest positive number that is evenly divisible by
# all of the numbers from 1 to 20?

# A:[3,9] B:[2,4,8,16]  C:[5,7,11,13,17,19] D:[6,10,12,14,15,18] where D = A*B ignore
# [9,16,5,7,11,13,17,19]
def smallest_multiple
  9*16*5*7*11*13*17*19
end

p smallest_multiple
