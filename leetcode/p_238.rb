# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    left = [1]
    len = nums.length
    (1...len).each do |i|
      left[i] = nums[i-1] * left[i-1]
    end
    right = 1
    ((len-1).downto 0).each do |j|
      left[j] = left[j] * right
      right = right * nums[j]
    end
    left
end
