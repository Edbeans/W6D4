Write a function, zipperLists, that takes in the head of two linked lists as arguments. The function should zipper the two lists together into single linked list by alternating nodes. If one of the linked lists is longer than the other, the resulting list should terminate with the remaining nodes. The function should return the head of the zippered linked list.

Do this in-place, by mutating the original Nodes.

You may assume that both input lists are non-empty.

PROBLEM 4

class Node
    attr_accessor :val, :next_node

    def initialize(val, next_node = nil)
        @val = val
        @next_node = next_node
    end
end


# test_00:

a = Node.new("a")
b = Node.new("b")
c = Node.new("c")

a.next_node = b
b.next_node = c

// a -> b -> c

x = Node.new("x")
y = Node.new("y")
z = Node.new("z")

x.next_node = y
y.next_node = z

// x -> y -> z

zipper_lists(a, x);
// a -> x -> b -> y -> c -> z

test_01:

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

// a -> b -> c -> d -> e -> f

x = Node.new("x")
y = Node.new("y")
z = Node.new("z")

x.next_node = y
y.next_node = z

// x -> y -> z

zipper_lists(a, x);
// a -> x -> b -> y -> c -> z -> d -> e -> f