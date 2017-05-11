class Pricer
  attr_accessor :std, :expr

  def pricing(order)
    a = order.standard_del.length * 10 
    b = order.express_del.length * 20
    order.price = a + b
  end

end
