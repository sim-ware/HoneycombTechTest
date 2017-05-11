class Order
  attr_reader :clock, :standard_del, :express_del

  def initialize
    @clock = ''
    @standard_del = []
    @express_del = []
  end

  def clock_number(number)
    @clock = "#{number}"
  end

  def standard_delivery_companies(*args)
    @standard_del.push(args)
    @standard_del = @standard_del[0]
  end

#if i want to not have extra brackets i should loop in the
#method and add each Company to the @[] individually
#The current method add 'args' as a whole and the only way
#to do that is to condense it into an array
#

  def express_delivery_companies(*args)
    @express_del << args
    @express_del = @express_del[0]
  end

end
