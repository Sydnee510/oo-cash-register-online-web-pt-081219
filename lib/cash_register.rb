class CashRegister 
attr_accessor :total, :items, :with_discount, :last_transaction_amount
def initialize(with_discount = 0)
@total = 0
@with_discount = with_discount
@items = []
end 
def discount
     self.with_discount
end
def add_item(title,price,quantity = 1)
  self.total += price*quantity
    quantity.times do
   items << title
 #   @price = price
#         @total += price * quantity
#     if quantity>1
#       i=0
#       while i<quantity
#         @items << title
#         i+=1
#       end
#     else
#       @items << title
# end
#@total += price*quantity
     @last_transaction_amount = @total
    @total
end
end
def  apply_discount()
  if @with_discount > 0
      @discount =  (self.total * @with_discount)/100
      self.total -= @discount
     "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
end
 def items 
   @items
 end
 
  # @total -= @last_transaction_amount
def void_last_transaction()
  self.total -= self.last_transaction_amount
end
end