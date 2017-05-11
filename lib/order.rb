require_relative 'pricer'
require_relative 'discounter'

class Order
  attr_accessor :clock, :standard_del, :express_del, :price, :discount_price

  def initialize
    @clock = ''
    @standard_del = []
    @express_del = []
    @price = 0
    @discount_price = 0
  end

  def clock_number(number)
    @clock = "#{number}"
  end

  def standard_delivery_companies(*args)
    @standard_del.push(args)
    @standard_del = @standard_del[0]
  end

  def express_delivery_companies(*args)
    @express_del << args
    @express_del = @express_del[0]
  end

end
