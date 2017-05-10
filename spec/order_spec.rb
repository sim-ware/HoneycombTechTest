require 'order'

describe Order do

  it 'initialises with empty attributes' do
    order = Order.new
    expect(order.clock).to eq ''
    expect(order.standard_del).to eq []
    expect(order.express_del).to eq []
  end

  it 'stores a string for the "Clock" number' do
    order = Order.new
    
  end

end
