# PROBLEM 2

# Write a function, longestStreak, that takes in the head of a linked list as an argument. The function should return the length of the longest consecutive streak of the same value within the list.

# test_00:

class Node
    attr_accessor :val, :next_node
 
    def initialize(val, next_node = nil)
      @val = val
      @next_node = next_node
    end
 end

def longest_streak(head)
    longest_streak = 0
    current_streak = 0
    return longest_streak if head == nil 
    check_val = head.val
    

    while head != nil
        if head.val == check_val
            current_streak += 1
            if current_streak > longest_streak
                longest_streak = current_streak
            end
        else
            check_val = head.val
            current_streak = 1
        end
        head = head.next_node
    end
    longest_streak
end

# a = Node.new(5)
# a = Node.new(7)
# b = Node.new(7)
# c = Node.new(7)
# d = Node.new(7)
# e = Node.new(7)
# f = Node.new(6)

# a.next_node = b
# b.next_node = c
# c.next_node = d
# d.next_node = e
# e.next_node = f

# // 5 -> 5 -> 7 -> 7 -> 7 -> 6

# p longest_streak(a) # // 3 

# # test_01:


# # // 4
# a = Node.new(5)
# p longest_streak(a) 

# # test_02:

p longest_streak(nil) 
