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

end
