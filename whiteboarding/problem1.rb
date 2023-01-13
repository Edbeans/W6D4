# PROBLEM 1

# Write a function, sumList, that takes in the head of a linked list containing numbers as an argument. The function should return the total sum of all values in the linked list.

class Node
   attr_accessor :val, :next_node

   def initialize(val, next_node = nil)
     @val = val
     @next_node = next_node
   end
end

def sum_list(head)
    # list = [] # time complexity, space complexity takes more  
    sum = 0
    while head != nil 
        sum += head.val 
        head = head.next_node 
    end
    sum 
    # return list.sum 
end

# test_00:
a = Node.new(2)
b = Node.new(8)
c = Node.new(3)
d = Node.new(-1)
e = Node.new(7)

a.next_node = b
b.next_node = c
c.next_node = d
d.next_node = e

# // 2 -> 8 -> 3 -> -1 -> 7

p sum_list(a) # 19

# test_01:
# x = Node.new(38)
# y = Node.new(4)

# x.next_node = y

# // 38 -> 4

# sumList(x) // 42

# test_02:
# a = Node.new(100)

# a.next_node = 100

# // 100

# sumList(a) // 100

# test_03:
# sumList(nil) // 0