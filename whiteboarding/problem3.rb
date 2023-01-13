# Write a function, reverseList, that takes in the head of a linked list as an argument. The function should reverse the order of the nodes in the linked list in-place and return the new head of the reversed linked list.

# HINT: you may consider using variables that point to the previous, current, and next node in the linked list.

class Node
    attr_accessor :val, :next_node
 
    def initialize(val, next_node = nil)
      @val = val
      @next_node = next_node
    end
 end

def reverse_list(head)
    # previous_node = nil
    # current_node = head.val 
    # while head.val != nil 
    #     previous_node = current_node # previous_node = 'a'
    #     current_node = head.next_node # current_node = 'b' 
    #     if head.next_node == nil 
    # end

    # return head.val # should be 'f' 
    list = [] 
    while head != nil 
        list << head.val
        head = head.next_node 
    end
    return list.reverse.first 
end
# test_00:

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")
d = Node.new("d")
e = Node.new("e")
f = Node.new("f")

a.next_node = b
b.next_node = c
c.next_node = d
d.next_node = e
e.next_node = f

# // a -> b -> c -> d -> e -> f

p reverse_list(a) 
# // f -> e -> d -> c -> b -> a

# test_01:

# a = Node.new("a")
# b = Node.new("b")

# a.next_node = b

# // a -> b 

# reverse_list(a) // b -> a 

# test_02:

# a = Node.new("a")

# // a

# reverse_list(a) // a 