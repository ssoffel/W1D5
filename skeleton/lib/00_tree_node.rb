

class PolyTreeNode
  attr_reader :parent, :children, :value
  
  def initialize(value)
    @parent = nil
    @children = []
    @value = value 
  end 
  
  def parent=(above_parents)
    if @parent == above_parents 
      return 
    end 
     
    
      @parent = above_parents
      above_parents.children << self
  end 

end

n1 = PolyTreeNode.new("root1")
n2 = PolyTreeNode.new("root2")
n3 = PolyTreeNode.new("root3")

 
 
p n3.parent = n2
p n3.parent = n1
# # connect n3 to n1
# n3.parent = n1
# n3.parent
# " "
# # connect n3 to n2
# n3.parent = n2
# n3.parent
# 
# # this should work
# raise "Bad parent=!1" unless n3.parent == n2
# raise "Bad parent=!2" unless n2.children == [n3]
# 
# # this probably doesn't
# raise "Bad parent=!3" unless n1.children == []



