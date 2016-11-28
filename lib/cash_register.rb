
require 'pry'
class CashRegister

  attr_accessor :discount, :total , :items

  def initialize(discount = 0)
    @discount=discount
    @total = 0
    @items = []

  end

  def total
    @total
  end
  def add_item(title,price,quantity = 0)

    i = 0
      if quantity > 0
        while quantity > i
          @items << title

          @total += price
          i += 1
        end
      else
        @items << title
        @total += price
      end

  end

  def apply_discount
    if discount > 0
    @total -= @total* (@discount*(0.01))
    "After the discount, the total comes to $#{@total.to_i}."
  else
    "There is no discount to apply."
  end

  end

  def items
    @items

  end

  def void_last_transaction
    @total -= @total

  end

end
