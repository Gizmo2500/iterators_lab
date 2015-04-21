# Custom Iterators with Blocks

**NOTE:** There are solutions in the `iterators.rb` file

## Implement a method `each`
We'll need to define a method `each` that takes in an array and a block. The method should run the block on each element of the array. Remember that the block need not be passed in explicitly.

```ruby
def each(arr)
  # Code goes in here dont
  # forget to use yield
end
```

If you're code can run this code, then you're good to go

```ruby
each [1,2,3] do |x|
  puts x
end
```


## Implement a method `map`
The method `map` takes in an array and a block and returns a new array with the results of calling a provided block on every element in this array. Try to use the `each` method we defined while creating `map`

```ruby
def map(arr)
  # Code goes in here dont
  # forget to use yield
end
```

If you're code can run this code, then you're good to go

```ruby
arr = map([1,2,3]) do |x|
  x * x
end

p arr # => [1,4,9]
```

## Implement a method `reduce`
The method `reduce` takes in an array, an accumulator, and a block. The method applies a block against an accumulator and each value of the array reducing it to a single value.

```ruby
def reduce(arr,acc)
  # Code goes in here dont
  # forget to use yield
end
```

If you're code can run this code you're good to go

```ruby
sum = reduce([1,2,3,4,5], 0) do |memo,val|
  memo + val
end

puts sum # => 15
```

## Implement a method `filter`
The method `filter` takes an array and a block. The method creates a new array with all elements that pass the test implemented by the provided function.

```ruby
def filter(arr)
  # Code goes in here dont
  # forget to use yield
end
```

If you're code can run this code you're good to go

```ruby
filt = filter([1,2,3,4,5,6,7,8]) do |x|
  x.even?
end

p filt # => [2,4,6,8]
```
