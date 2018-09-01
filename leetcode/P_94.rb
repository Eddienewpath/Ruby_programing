# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
  list = []
  helper(root, list)
  list
end

def helper (r, l)
  return l if r == nil
  helper (r.left, l)
  l << r.val
  helper (r.right, l)
end
