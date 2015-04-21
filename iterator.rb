def each(arr)
  i = 0
  while i < arr.length
    yield(arr[i])
    i += 1
  end
end

each [1,2,3] do |x|
  puts x
end

def map(arr)
  result = []
  each(arr) do |x|
    result << yield(x)
  end
  result
end

arr = map([1,2,3]) do |x|
  x * x
end

p arr

def reduce(arr, acc)
  each(arr) do |x|
    acc = yield(acc,x)
  end
  acc
end

sum = reduce([1,2,3,4,5], 0) do |memo,val|
  memo + val
end

puts sum

def filter(arr)
  result = []
  each(arr) do |x|
    result << x if yield(x)
  end
  result
end

filt = filter([1,2,3,4,5,6,7,8]) do |x|
  x.even?
end

p filt

