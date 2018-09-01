# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
    return 0 if root == null
    d1 = max_depth (root.left)
    d2 = max_depth (root.right)
    return (d1 > d2 ? d1 : d2) + 1
end
