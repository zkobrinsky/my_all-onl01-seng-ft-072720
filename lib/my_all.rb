require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i+1
  end
  if block_return_values.include?(false)
    false
  else
    true
end

my_all?([1, 1, 2, 3, 4, 5]) {|i| i<3 puts "#{i}"}
# binding.pry
