class Pricer
  attr_accessor :std, :expr

  # def initialize
  #   @std = 10
  #   @expr = 20
  # end

  def pricing(order)
    a = order.standard_del.length * 10 #@std
    b = order.express_del.length * 20 #@expr
    order.price = a + b
  end

  # def discounter_a(order)
  #   @expr = 15 if order.express_del.length >= 2
  #   a = order.standard_del.length * @std
  #   b = order.express_del.length * @expr
  #   order.discount_price = a + b
  # end
  #
  # def discounter_b(order)
  #   order.discount_price = order.price * 0.9 if order.price > 30 && order.discount_price == 0
  #   order.discount_price = order.discount_price * 0.9 if order.price > 30 && order.discount_price != 0
  # end

end
