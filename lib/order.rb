class Order
  attr_reader :clock, :standard_del, :express_del

  def initialize
    @clock = ''
    @standard_del = []
    @express_del = []
  end
end
