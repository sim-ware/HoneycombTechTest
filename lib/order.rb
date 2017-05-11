class Order
  attr_reader :clock, :standard_del, :express_del, :price, :discount_price, :std, :expr

  def initialize
    @clock = ''
    @standard_del = []
    @express_del = []
    @price = 0
    @discount_price = 0
    @std = 10
    @expr = 20
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

  def pricing
    a = @standard_del.length * @std
    b = @express_del.length * @expr
    @price = a + b
  end

  def discounter_a
    @expr = 15 if @express_del.length >= 2
    a = @standard_del.length * @std
    b = @express_del.length * @expr
    @discount_price = a + b
  end

  def discounter_b
    @discount_price = @price * 0.9 if @price > 30 && @discount_price == 0
    @discount_price = @discount_price * 0.9 if @price > 30 && @discount_price != 0
  end

end
