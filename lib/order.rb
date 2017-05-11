class Order
  attr_reader :clock, :standard_del, :express_del, :price


  def initialize
    @clock = ''
    @standard_del = []
    @express_del = []
    @price = 0
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
    a = @standard_del.length * 10 # STORE
    b = @express_del.length * 20 # ELSEWHERE
    @price = a + b
  end

end
