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
    order.clock_number('WNP/SWCL001/010')
    expect(order.clock).to eq 'WNP/SWCL001/010'
  end

  it 'stores an Array for "standard_del" Companies' do
    order = Order.new
    order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
    expect(order.standard_del).to eq ['Disney', 'Discovery', 'Viacom']
  end

  it 'stores a Array for "express_del" Companies' do
    order = Order.new
    order.express_delivery_companies('Horse & County')
    expect(order.express_del).to eq ['Horse & County']
  end

  it 'calculates the Price of an Order' do
    order = Order.new
    order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
    order.express_delivery_companies('Horse & County')
    order.pricing
    expect(order.price).to eq 50
  end

  it 'discounts the Price of the First Example' do
    x = Order.new
    x.clock_number('WNP/SWCL001/010')
    x.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
    x.express_delivery_companies('Horse & County')
    x.pricing
    x.discounter_a
    x.discounter_b
    expect(x.price).to eq 50
    expect(x.discount_price).to eq 45
  end

  it 'discounts the Price of the Second Example' do
    order = Order.new
    order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
    order.express_delivery_companies('Horse & County')
    order.pricing
    expect(order.price).to eq 50
    expect(order.discount_price).to eq 45
  end

end
