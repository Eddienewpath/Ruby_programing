class RPNCalculator
  # TODO: your code goes here!
  attr_accessor :value
  #stack
  def initialize
    @value = 0
    @arr = []
  end

  def push (i)
    @arr.push(i)
  end

  def pop
    x = @arr.pop
    if x.nil?
      raise "calculator is empty"
    end
    x
  end

  def plus
    sum = 0
    second = pop
    first = pop
    sum = first + second
    push(sum)
    @value = sum
  end

  def minus
   res = 0
   second = pop
   first = pop
   res = first - second
   push(res)
   @value = res
  end

  def times
    res = 0.0
    second = pop
    first = pop
    res = first.to_f * second.to_f
    push(res)
    @value = res
  end

  def divide
    res = 0.0
    second = pop
    first = pop
    res = first.to_f / second.to_f
    push(res)
    @value = res
  end

  def tokens str
    oper = ["+", "-", "*","/"]
    s = str.split(" ")
    s.map do |x|
      if oper.include? x
        x.to_sym
      else
        x.to_i
      end
    end
  end

  def evaluate str
    oper = [:+, :-, :*,:/]
    ar = tokens(str)
    ar.each do |x|
      if oper.include?(x)
        case x
        when :+ then plus
        when :- then minus
        when :* then times
        when :/ then divide
        end
      else
        push(x)
      end
    end
    @value
  end
end
