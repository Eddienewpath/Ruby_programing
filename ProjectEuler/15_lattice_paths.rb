# slow recursive method
def paths (x, y)
  return 1 if x == 0 && y == 0
  return 0 if x < 0
  return 1 if x == 0
  return 0 if y < 0
  return 1 if y == 0
  center = 2 * paths(x -1, y -1)
  left = paths(x -2, y)
  up = paths(x, y -2)
  return (left + center + up)
end
#p paths 20,20

# fast pattern method from forum 
def check_matrix(current)
  if (current == 1)
    return 2;
  end
  if (current == 2)
    return 6;
  end
  fourth = check_matrix(current - 1) * 4;
  return (fourth - fourth / (current * 2));
end

p check_matrix(20);

# even faster mathematical method
# 40 spots choose 20
def fact n
  up = (21..n).reduce(:*)
  down = (1..20).reduce(:*)
  up/down
end
p fact 40
