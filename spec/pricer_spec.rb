require 'pricer'
require 'order'

describe Pricer do

  describe "::new" do
    subject { Pricer.new }

    it "creates a new Pricer" do
      expect(subject).to be_instance_of(Pricer)
    end
  end

  describe '#pricing' do
    it 'calculates the Price of an Order' do
      order = Order.new
      p = Pricer.new
      order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
      order.express_delivery_companies('Horse & County')
      p.pricing(order)
      expect(order.price).to eq 50
    end
  end

end
