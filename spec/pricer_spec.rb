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
    order = Order.new
    it 'calculates the Price of an Order' do
      order = instance_double("Order", :price => 0, :standard_del => ['Disney', 'Discovery', 'Viacom'], :express_del => ['Horse & County'])
      # order.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
      # order.express_delivery_companies('Horse & County')
      subject.pricing(order)
      expect(order.price).to eq 50
    end
  end

end
