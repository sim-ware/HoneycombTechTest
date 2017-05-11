require_relative 'order'

class Price
  attr_reader :price, :st_del_price, :expr_del_price, :order

  def initialize
    @price = 0
    @st_del_price = 10
    @expr_del_price = 20
    @order = Order.new
  end

end
