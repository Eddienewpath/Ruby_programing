# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# Ex:
# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

# test case #1
# [1,8]
# [0]
# test case #2
#[2,4,3]
#[5,6,4]


# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
   carry_out = 0
   l3 = ListNode.new(-1)
   head = l3
  # while l1 != nil || l2 != nil
  # nil is falsey
  while l1 || l2
    tmp_sum = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry_out
    carry_out = (tmp_sum >= 10 ? 1 : 0)
    tmp_ls = ListNode.new(tmp_sum % 10)
    l3.next = tmp_ls
    l3 = l3.next
    l1 = l1.next if l1 != nil
    l2 = l2.next if l2 != nil
  end
  l3.next = ListNode.new(1) if carry_out == 1
  head.next
end

# bad version of (l1 ? l1.val : 0) , (l2 ? l2.val : 0)
=begin
def two_digit_sum a, b
  return (a.val + b.val) if (a != nil && b != nil)
  return a.val if b == nil
  return b.val if a == nil
  return 0 if a == nil && b == nil
end
=end
