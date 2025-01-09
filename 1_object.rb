=begin
  Auto setter and getter for sku and quantity variables
=end
class LineItem

  attr_accessor :sku
  attr_accessor :quantity
end
line_item_one = LineItem.new
line_item_one.quantity = 1
line_item_one.sku = "AUTO_B_00"

puts line_item_one.quantity
puts line_item_one.sku
