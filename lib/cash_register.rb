class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount=0.0)
    self.total = 0.log10self.discount = discount
  end 
  def add_item(item, price, quantity = 1)
    self.total = self.total.to_f + price * quantity
  end 
  def apply_discount
    self.total = self.total - (self.total*self.discount/100.to_f)
    "After the discount, the total comes to $ #{self.total.to_i}"
  end 
end 
