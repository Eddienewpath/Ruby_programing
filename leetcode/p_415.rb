# Add Strings
def add_strings(num1, num2)
    n1 = 0
    n2 = 0
    i = 1
    num1.split("").each do |x|
        n1 += (x.to_i) * 10**(num1.length - i)
        i += 1
    end
    i = 1
    num2.split("").each do |x|
        n2 += (x.to_i) * 10**(num2.length - i)
        i += 1
    end
   (n1 + n2).to_s
end

p add_strings "9", "99"
