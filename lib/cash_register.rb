class CashRegister
  attr_accessor :items, :discount, :total, :last_transaction_amount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    counter = 0
      while counter < quantity
       @items << title
       counter += 1
      end
    @total += price * quantity
    @last_transaction_amount = price * quantity
    @last_transaction_amount
  end 
  
  def apply_discount
   if @discount > 0 
     @discount = @discount/100.to_f
     @total = @total - (@total * (@discount))
     return "After the discount, the total comes to $#{total.to_i}."
   else
     return "There is no discount to apply."
   end
  end
  
  def void_last_transaction
    self.total -= self.last_transaction_amount
  end
end