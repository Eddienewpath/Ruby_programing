# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99
# Find the largest palindrome made from the product of two 3-digit numbers.

# 3-digit number products: x*y where x and y in [100...1000]
# write a function name .isPalindome return boolean
def larg_palin_product
  max_product = 1
  (100...1000).each do |x|
    (100...1000).each do |y|
      max_product = x*y if (isPalindome x*y) && (x*y > max_product)
    end
  end
  max_product
end

private
def isPalindome num
  str = num.to_s
  if str.length < 2
    return true
  elsif str[0] == str[-1]
    isPalindome str[1...-1]
  else
    return false
  end
end

p larg_palin_product
