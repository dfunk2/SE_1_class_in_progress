#binary search tree in order
class Node
     attr_accessor :value, :left, :right
     def initialize(value)
        @value = value
        @left = nil
        @right = nil
    end
end 
class BST
    attr_accessor :bend
    def initialize
        @bend = nil 
    end 

    def createChildren(value)
        @bend = children(@bend, value)
    end

    def bst_exist(value)
        exist(@bend, value)
    end

    def display
        display_BST(@bend)
        puts
    end

    private def children(nodes, value)
        return Node.new(value) if nodes.nil?; if value < nodes.value
        nodes.left = children(nodes.left, value)

    elsif value > nodes.value
        nodes.right = children(nodes.right, value)
    end
    nodes
 end

 def exist(nodes, value)
     return false if nodes.nil?
     return true if nodes.value == value
     if value < nodes.value
        exist(nodes.left, value)
     else
        exist(nodes.right, value)
     end
end
    def display_BST(nodes)
        return if nodes.nil?
        display_BST(nodes.left)
        print "#{nodes.value} "
        display_BST(nodes.right)
    end
end 

bst_instance = BST.new
[5, 3, 7, 2, 4, 6, 8].each { |n| bst_instance.createChildren(n) }
puts "node 4 #{bst_instance.bst_exist(4)}"
puts "node 10 #{bst_instance.bst_exist(10)}"
print "display: "
bst_instance.display