require 'price'
require 'order'

describe Price do

  # before do
  #   order = Order.new
  #   order.clock_number('WNP/SWCL001/010')
  #   order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
  #   order.express_delivery_companies('Horse & County')
  # end

  it 'Calculates the Price of an Order' do
    order = Order.new
    order.clock_number('WNP/SWCL001/010')
    order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
    order.express_delivery_companies('Horse & County')
    expect(price_calc(order)).to eq 50
  end

end
