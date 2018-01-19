

class PolyTreeNode
  attr_accessor :parent, :children, :value

  def initialize(value)
    @parent = nil
    @children = []
    @value = value 
  end 
  
   
  
  def parent=(above_parents)
    if @parent == above_parents 
    elsif above_parents == nil 
      @parent.children.delete(self)
      @parent = nil
    elsif @parent == nil 
      parent = above_parents 
      above_parents.children << self
      @parent = above_parents
    else 
        @parent.children.delete(self)
        above_parents.children << self
        @parent = above_parents
    end
  end 
  
  def add_child(child)
    child.parent = self
  end
  
  def remove_child(child)
    child.parent = nil
    unless @children.include?(child)
      raise "Not our child"
    end 
  end 
  
  def dfs(target_value)
    return self if target_value == self.value
    
    self.children(target_value)
    # child_arry = []
    # return self if self.value == target_value 
    # child_arry << self.children
    # child_arry.each do |node| 
    #   if node.value == target 
    #     return node 
    #   else 
    #     child_arry << node.children 
    #   end 
    # end
  end    
    
    
  

end

 


# n1 = PolyTreeNode.new("root1")
# n2 = PolyTreeNode.new("root2")
# n3 = PolyTreeNode.new("root3")
# 
#  n2.parent = n1 
#  n3.parent = n2
 
 
# p n3.parent = nil 
# p n3.parent
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




