def count_smileys (arr)
  if arr.length == 0
    0
  end
  newArr = [':)',':-)',':~)', ';D',';-D', ';~D']
  count = 0
  arr.each do |s|
    if newArr.include? s
      count += 1
    end
  end
  count
end
