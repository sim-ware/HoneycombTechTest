class Price

  def initialize
    @price = 0
    @st_del_price = 10
    @expr_del_price = 20
  end

  def price_calc(order)
    #a = order.standard_del.length * st_del_price
    #
    #b = order.express_del.length * expr_del_price
    #
    #@price = a + b
    #
    #order.push(@price)
  end

end
