class CashRegister
  
  attr_accessor :total, :discount, :title, :price, :quantity, :items
  
  ITEMS = [ ]
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    @title = title
    @quantity = quantity
    @price = price
    @total += (price*quantity)
  end
  
  def apply_discount
    #changing discount and total to floats
    @discount = @discount.to_f
    @total = total.to_f
    
    #if there is a discount to apply, we go through this loop
    if @discount != 0
      #getting the discount into decimal form 
      decimal_discount = @discount/100
      #coming up with the dollar amount for the discount
      dollars_off = @total*decimal_discount
      #subtracting the discount from the total
      @total = @total - dollars_off
      p "After the discount, the total comes to $#{@total.to_i}."
      
    #if there is no discount, we return this message
    elsif @discount == 0
      p "There is no discount to apply."
    end
  end
  
  def items
    p self.add_item(title, price, quantity)
    ##how many times to repeat the item in the array given the quantity
    #item_quantity = "#{title} " * @quantity
    ##converting to an array
    #items = item_quantity.split
    #ITEMS.push(*items)
    #p ITEMS
   ##HOW DO I ADD THE EGGS?!
    
  end 
  
  
end