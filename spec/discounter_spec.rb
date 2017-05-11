require 'discounter'
require 'pricer'
require 'order'

describe Discounter do

  describe "::new" do
    subject { Discounter.new }

    it "creates a new Discounter" do
      expect(subject).to be_instance_of(Discounter)
    end
  end

  describe '#discounter_a' do
    it 'discounts the Price of the First Example' do
      x = Order.new
      p = Pricer.new
      d = Discounter.new
      x.clock_number('WNP/SWCL001/010')
      x.standard_delivery_companies('Disney', 'Discovery', 'Viacom')
      x.express_delivery_companies('Horse & County')
      p.pricing(x)
      d.discounter_a(x)
      d.discounter_b(x)
      expect(x.price).to eq 50
      expect(x.discount_price).to eq 45
    end
  end

  describe '#discounter_b' do
    it 'discounts the Price of the Second Example' do
      y = Order.new
      p = Pricer.new
      d = Discounter.new
      y.clock_number('ZDW/EOW005/010')
      y.express_delivery_companies('Disney', 'Discovery', 'Viacom')
      p.pricing(y)
      d.discounter_a(y)
      d.discounter_b(y)
      expect(y.price).to eq 60
      expect(y.discount_price).to eq 40.5
    end
  end


end
