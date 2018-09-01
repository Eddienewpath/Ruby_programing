# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  ans = 0
  nums.each do |x|
    ans ^= x
  end
  ans
end

# more elegant way.
# using reduce to do ^ operation using symbol :^ . 
def single_number(nums)
  nums.reduce(:^)
end
