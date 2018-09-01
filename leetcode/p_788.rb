def rotated_digits(n)
  count = 0
  for k in 1..n
    count += 1 if is_good k
  end
  count
end
# At least one digit is from [2, 5, 6, 9]
# could be from [0,1,8]
# 186
def is_good a
  b = a ;  n = 0; i = 0;
  ar_hash = {0 => 0, 1 => 1, 8 => 8, 2 => 5, 5 => 2, 6 => 9, 9 => 6}

  loop do
    break if b == 0
    k = b%10
    if ar_hash[k] != nil
      n += ar_hash[k] * 10 ** i
    else
      return false
    end
    b = b/10
    i += 1
  end

  if n - a != 0
    return true
  else
    return false
  end
end

# step 1: smart version. declare a boolean variable to store.
# step 2: check if number digits are in [3,4,7] first, return false immediately if true.
# if step 2 is passed, then see if number digits are in [2,5,6,7]. if true variable set to be true.
# if the digits are in [0,1,8], there is not condition for these digits. so
# they will not affect the boolean variable.

def is_valid?(num)
    dif_num = false

    while num > 0
        dig = num % 10

        if dig == 3 || dig == 4 || dig == 7
            return false
        end
        # this is called "there are at least one digit from [2,5,6,9]"
        if dig == 2 || dig == 5 || dig == 6 || dig == 9
            dif_num = true
        end

        num = num / 10
    end
    dif_num
end
#p rotated_digits 857
