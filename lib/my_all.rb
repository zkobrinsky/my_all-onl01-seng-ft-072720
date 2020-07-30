require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    binding.pry
    i = i+1
  end
    block_return_values
end

my_all?([1, 1, 2, 3, 4, 5]) {|i| i<3}
