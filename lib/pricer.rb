class Pricer
  attr_accessor :std, :expr

  def pricing(order)
    a = order.standard_del.length * 10 #@std
    b = order.express_del.length * 20 #@expr
    order.price = a + b
  end

end
