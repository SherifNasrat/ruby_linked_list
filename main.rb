require_relative 'lib/list'

my_list = LinkedList.new

puts my_list.to_s
my_list.append(1)
puts my_list.to_s
my_list.append(2)
my_list.append(3)
my_list.append(4)
puts my_list.to_s
