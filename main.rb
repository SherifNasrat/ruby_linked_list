require_relative 'lib/list'

my_list = LinkedList.new

puts my_list.head
my_list.append(1)
puts "Find number 2 #{my_list.find(2)}"
puts "Find number 1 #{my_list.find(1)}"
my_list.append(2)
puts my_list.head
my_list.preprend(3)
puts "does list contain '3'? #{my_list.contains?(3)}"
puts "does list contain '4'? #{my_list.contains?(4)}"
puts my_list
puts "size is: #{my_list.size}"
puts "element at index 0: #{my_list.at(0)}"
my_list.pop
puts my_list
